import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/records/model/isdaRecordsModel/gametype_model/gametype_model.dart';

import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';

class ISDAGameTypeController extends GetxController {
  var gameTypeModel = const GameTypeModel().obs;
  var dataList = <Data>[].obs;
  var loading = false.obs;
  var selectedGametype = ''.obs;

  Future<void> fetchGameType() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.gameType;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        gameTypeModel(GameTypeModel.fromJson(responseData));

        if (gameTypeModel.value.status == true) {
          print("Success to fetch gametype");

          dataList.assignAll(gameTypeModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        gameTypeModel(GameTypeModel.fromJson(responseData));

        if (gameTypeModel.value.status == false) {
          print("failed");
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      // baseController.hideLoading();
    }
  }
}

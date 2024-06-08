import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';

import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';
import '../model/performance_model.dart';

class PerformanceController extends GetxController {
  var performanceModel = const PerformanceModel().obs;
  var gameDataList = [].obs;
  var result = <String, double>{}.obs;

  var totalGamePlayed = 0.obs;

  Future<void> fetchPerformanceData() async {
    // final baseController = BaseController();

    const apiUrl =
        ApiEndPoints.baseURL + ApiEndPoints.performancePiechartReport;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    var requestData = {
      "api_key": apiToken,
      "user_id": userId,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);
      // .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        performanceModel(PerformanceModel.fromJson(responseData));

        if (performanceModel.value.status == true) {
          print("Success : msg ${performanceModel.value.message} ");
          if (performanceModel.value.data != null) {
            totalGamePlayed.value =
                performanceModel.value.data!.totalGamesPlayed ?? 0;
            gameDataList
                .assignAll(performanceModel.value.data!.gamesData ?? []);
            result.assignAll({
              for (var v in gameDataList)
                v.gameTypeName: v.gamesPlayed.toDouble()
            });
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        performanceModel(PerformanceModel.fromJson(responseData));

        if (performanceModel.value.status == false) {
          if (kDebugMode) {
            print("Failed");
          }
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
    }
  }
}

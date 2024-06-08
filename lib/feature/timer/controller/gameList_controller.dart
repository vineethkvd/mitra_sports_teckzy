import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/model/myRecordsModel/gameType_model/gameType_model.dart';

class TimerGameType extends GetxController {
  var gameTypeModel = GameTypeModel().obs;
  var gameList = <GameList>[].obs;
  var loading = false.obs;
  var selectedGameId = ''.obs;

  Future<void> fetchGameTypeData() async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.gameType;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    final requestData = {
      "api_key": apiToken,
      "user_id": userId,
    };

    try {
      print("Sending request: $requestData");
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      print("Response received from recods: $response");

      if (response != null && response.statusCode == 200) {
        final responseData = json.decode(response.body);
        gameTypeModel.value = GameTypeModel.fromJson(responseData);

        if (gameTypeModel.value.status == true) {
          print("Success to fetch gametype Timer");
          gameList.assignAll(gameTypeModel.value.gameList ?? []);
          print("responsedata from gametype timer:$responseData");
        } else {
          throw Exception('Failed to fetch history data: Status is false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        gameTypeModel.value = GameTypeModel.fromJson(responseData);

        if (gameTypeModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch gender data: ${gameTypeModel.value.message}");
          }
          // Handle unauthorized access, maybe navigate to login
        } else {
          throw Exception('Failed to fetch gender data: Unexpected status');
        }
      } else {
        throw Exception('Failed to fetch gender data: Unexpected error');
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error: $error");
      }
    } finally {
      loading.value = false;
    }
  }
}

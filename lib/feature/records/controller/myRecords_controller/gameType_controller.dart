import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/model/myRecordsModel/gameType_model/gameType_model.dart';

class GameTypeController extends GetxController {
  var gameTypeModel = GameTypeModel().obs;
  var gameList = <GameList>[].obs;
  var loading = false.obs;
  var selectedGame = ''.obs;

  Future<void> fetchGameData() async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.gameType;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
    };

    try {
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        gameTypeModel.value = GameTypeModel.fromJson(responseData);

        if (gameTypeModel.value.status == true) {
          print("Success to fetch GameType");
          gameList.assignAll(gameTypeModel.value.gameList ?? []);
        } else {
          throw Exception('Failed to fetch gender data: Status is false');
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

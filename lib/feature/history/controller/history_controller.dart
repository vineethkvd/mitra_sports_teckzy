import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/history/model/history_model/history_model.dart';

class HistoryController extends GetxController {
  var historyModel = HistoryModel().obs;
  var historyList = <HistoryList>[].obs;
  var isLoading = true.obs;
  var date = ''.obs;
  var time = ''.obs;

  Future<void> splitDate({required String dateTimeString}) async {
    List<String> dateTimeParts = dateTimeString.split(" ");
    date.value = dateTimeParts[0];
    time.value = dateTimeParts[1].split(".")[0];
  }

  Future<void> fetchHistoryData() async {
   // final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.history;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    final requestData = {
      "api_key": apiToken,
      "user_id": userId,
    };

    try {
      isLoading(true);
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData);
          //.catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        historyModel.value = HistoryModel.fromJson(responseData);

        if (historyModel.value.status == true) {
          historyList.assignAll(historyModel.value.historyList ?? []);
        } else {
          throw Exception('Failed to fetch history data: Status is false');
        }
      } else if (response.statusCode == 404) {
        final responseData = json.decode(response.body);
        historyModel.value = HistoryModel.fromJson(responseData);

        if (historyModel.value.status == false) {
          if (kDebugMode) {
            print("Failed to fetch history data: ${historyModel.value.message}");
          }
        } else {
          throw Exception('Failed to fetch history data: Unexpected status');
        }
      } else {
        throw Exception('Failed to fetch history data: Unexpected error');
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error: $error");
      }
    } finally {
      isLoading(false);
    }
  }
}

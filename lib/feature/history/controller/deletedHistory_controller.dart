import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/history/model/history_model/history_model.dart';

class DeleteHistoryController extends GetxController {
  var historyModel = const HistoryModel().obs;
  var loading = false.obs;

  Future<void> fetchDeleteData(int index, String recordId) async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.deleteHistory;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    final requestData = {
      "api_key": apiToken,
      "record_id": recordId,
    };
    print("userifhistory:$userId");
    print("recordId:$recordId");

    try {
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        if (responseData['status'] == true) {
          print("Success to fetch history");

          print("responsedata:$responseData");
        } else {
          throw Exception('Failed to fetch history data: Status is false');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        historyModel.value = HistoryModel.fromJson(responseData);

        if (historyModel.value.status == false) {
          if (kDebugMode) {
            print("Failed to fetch gender data: ${historyModel.value.message}");
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

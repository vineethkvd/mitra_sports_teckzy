import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../../core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/analytics_model.dart';

class AnalyticsController extends GetxController {
  var analyticsModel = const AnalyticsModel().obs;
  // var dataList = <Data>[].obs;
  var dailyDataList = <Daily>[].obs;
  var weeklyDataList = <Daily>[].obs;
  var monthlyDataList = <Daily>[].obs;
  var status = false.obs;
  var message = ''.obs;

  Future<void> fetchAnalytics() async {
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.analytics;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    var requestData = {
      "api_key": apiToken,
      "user_id": userId,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient.postMethod(apiUrl, requestData);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        analyticsModel(AnalyticsModel.fromJson(responseData));
        print("analytics$responseData");
        if (analyticsModel.value.status == true) {
          print("Success: msg ${analyticsModel.value.message}");
          status.value = analyticsModel.value.status ?? false;
          message.value = analyticsModel.value.message ?? '';

          if (analyticsModel.value.data != null) {
            // Assuming you want to take the first element of the data list
            var data = analyticsModel.value.data!;
            dailyDataList.assignAll(data.daily ?? []);
            weeklyDataList.assignAll(data.weekly ?? []);
            monthlyDataList.assignAll(data.monthly ?? []);
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        analyticsModel(AnalyticsModel.fromJson(responseData));

        if (analyticsModel.value.status == false) {
          print("Failed: msg ${analyticsModel.value.message}");
          status.value = analyticsModel.value.status ?? false;
          message.value = analyticsModel.value.message ?? '';
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch analytics data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    }
  }
}

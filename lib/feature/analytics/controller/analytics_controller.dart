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
  var dataList = <Data>[].obs;

  Future<void> fetchAnalytics() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.analytics;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    var requestData = {"api_key": apiToken, "user_id": userId};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print("$responseData");
        analyticsModel(AnalyticsModel.fromJson(responseData));

        if (analyticsModel.value.status == true) {
          print("Success to fetch ");
          dataList.assignAll(analyticsModel.value.data!);
          print("array${dataList.value}");
          if (analyticsModel.value.data!.isNotEmpty) {
            print("chk");
            analyticsModel.value.data!.map(
              (e) {
                final data = e;
                print("chk data $data");
              },
            ).toList();
          } else {
            print("List is empty");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        analyticsModel(AnalyticsModel.fromJson(responseData));

        if (analyticsModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${analyticsModel.value.message}");
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
    } finally {
      // baseController.hideLoading();
    }
  }
}

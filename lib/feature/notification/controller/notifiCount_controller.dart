import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/feature/notification/model/countNtf_model/countNtf_model.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';

class NotificationCountController extends GetxController {
  var notificationCountModel = const NotificationCountModel().obs;

  Future<void> fetchNotificationsCount() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.countNotification;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    var requestData = {
      "api_key": apiToken,
      "user_id": userId,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        notificationCountModel(NotificationCountModel.fromJson(responseData));

        if (notificationCountModel.value.status == "Success") {
          print("Success to fetch NotificationCount ");
          print("responeNotification$responseData");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        notificationCountModel(NotificationCountModel.fromJson(responseData));

        if (notificationCountModel.value.status == "Failed") {
          if (kDebugMode) {
            print(
                "Failed to fetch NotificationCount data: ${notificationCountModel.value.message}");
          }
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch NotificationCount data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      baseController.hideLoading();
    }
  }

  // Getter method to access unseen notification count
  int get unseenCount => notificationCountModel.value.data?.unseenCount ?? 0;
}

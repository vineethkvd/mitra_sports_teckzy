import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';
import '../model/notification_model/notification_model.dart';

class NotificationController extends GetxController {
  var notificationModel = const NotificationModel().obs;
  var dataList = <Data>[].obs;
  var date = ''.obs;
  var time = ''.obs;
  var unseenCount = 0.obs;
  Future<void> splitDate({required String dateTimeString}) async {
    List<String> dateTimeParts = dateTimeString.split(" ");
    date.value = dateTimeParts[0];
    time.value = dateTimeParts[1].split(".")[0];
  }

  Future<void> fetchNotifications() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.notification;
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
        notificationModel(NotificationModel.fromJson(responseData));

        if (notificationModel.value.status == "Success") {
          print("Success to fetch Notification ");
          print("responeNotification$responseData");

          dataList.assignAll(notificationModel.value.data ?? []);

          // Calculate unseen notifications count
          // If notificationModel.value.data is null, use an empty list as a default value
          //unseen notifications count
          unseenCount.value = notificationModel.value.data?.length ?? 0;
          print("Unseennotifi:$unseenCount");
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        notificationModel(NotificationModel.fromJson(responseData));

        if (notificationModel.value.status == "Failed") {
          if (kDebugMode) {
            print(
                "Failed to fetch Notification data: ${notificationModel.value.message}");
          }
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch Notification data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      baseController.hideLoading();
    }
  }
}

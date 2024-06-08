import 'dart:convert';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/notification/controller/notification_controller.dart';
import 'package:mitra_sports_teckzy/feature/notification/model/notification_model/notification_model.dart';

class ViewNotificationController extends GetxController {
  var notificationModel = const NotificationModel().obs;
  var loading = false.obs;
  final NotificationController notificationController =
      NotificationController();

  Future<void> markNotificationAsViewed({required String notifiId}) async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.viewNotification;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    final requestData = {
      "api_key": apiToken,
      "notification_id": notifiId,
      "user_id": userId,
    };

    print("API URL: $apiUrl");
    print("Request data from viewNotifi: $requestData");

    try {
      final baseClient = BaseClient();
      final response = await baseClient.postMethod(apiUrl, requestData);

      if (response == null) {
        throw Exception('Failed to get a response from the server');
      }

      print("Response status code: ${response.statusCode}");
      print("Response body: ${response.body}");

      print("${json.decode(response.body)}");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        if (responseData['status'] == true) {
          print("Notification marked as viewed successfully");
          notificationController.unseenCount.value--;
          //notificationController.fetchNotifications();
          print("responsedata view notif:$responseData");
        } else {
          throw Exception(
              'Failed to mark notification as viewed: Status is false');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        notificationModel.value = NotificationModel.fromJson(responseData);

        if (notificationModel.value.status == false) {
          print(
              "Failed to mark notification as viewed: ${notificationModel.value.message}");
        } else {
          throw Exception(
              'Failed to delete Notification data: Unexpected status');
        }
      } else {
        throw Exception(
            'Failed to mark notification as viewed: Unexpected status');
      }
    } catch (error) {
      print("Error: $error");
    } finally {
      loading.value = false;
    }
  }

  /*Future<void> markAllNotificationsAsViewed() async {
    loading.value = true;
    try {
      var notifications = notificationController.notificationModel.value.data!;
      for (var notification in notifications) {
        await markNotificationAsViewed(
            notifiId: notification.notifiId.toString());
      }
      notificationController.fetchNotifications();
    } catch (error) {
      print("Error: $error");
    } finally {
      loading.value = false;
    }
  }*/
}

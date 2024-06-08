import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/about/about/model/about_us_model/about_us_model.dart';

class AboutUsController extends GetxController {
  var aboutUsModel = AboutUsModel().obs;
  var data = ''.obs;
  Future<void> fetchAboutUs() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.aboutUs;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        aboutUsModel(AboutUsModel.fromJson(responseData));
        print("success");
        data.value = aboutUsModel.value.data!.first;
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        aboutUsModel(AboutUsModel.fromJson(responseData));
        print("success");
        data.value = aboutUsModel.value.data!.first;
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      // baseController.hideLoading();
      // loading.value = true    }
    }
  }
}

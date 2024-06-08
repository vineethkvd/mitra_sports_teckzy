import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/about/about/model/privacy_policy_model/privacy_policy_model.dart';
class PolicyController extends GetxController {
  var policyModel = PrivacyPolicyModel().obs;
  var data = ''.obs;
  Future<void> fetchPolicy() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.privacyPolicy;
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
        policyModel(PrivacyPolicyModel.fromJson(responseData));
        print("success");
        data.value = policyModel.value.data!.first;
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        policyModel(PrivacyPolicyModel.fromJson(responseData));
        print("success");
        data.value = policyModel.value.data!.first;
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

  void fetchTerm() {}
}

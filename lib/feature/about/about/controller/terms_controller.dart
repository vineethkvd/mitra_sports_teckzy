import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/about/about/model/terms_model/terms_model.dart';



class TermsController extends GetxController {
  var termsModel = TermsModel().obs;
  var data = ''.obs;

  Future<void> fetchTerm() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.terms;
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
        termsModel(TermsModel.fromJson(responseData));
        print("success");
        data.value = termsModel.value.data!.first;
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        termsModel(TermsModel.fromJson(responseData));

        data.value = termsModel.value.data!.first;
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      // baseController.hideLoading();
      // loading.value = true;
    }
  }
}

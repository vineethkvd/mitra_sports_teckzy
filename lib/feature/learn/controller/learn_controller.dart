import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/learn/model/learn_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';

class LearnController extends GetxController {
  var learnModel = const LearnModel().obs;
  var dataList = <Data>[].obs;

  Future<void> launUrl(String url) async{
    final Uri uri = Uri.parse(url);
    if(!await launchUrl(uri)){
      throw Exception("Could not launch $uri");
    }
  }


  Future<void> fetchLearn() async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.learn;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {
      "api_key": apiToken,
    };

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        learnModel(LearnModel.fromJson(responseData));

        if (learnModel.value.status == "Success") {
          print("Success to fetch learn ");
          print("Learn : ${responseData}");

          dataList.assignAll(learnModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        learnModel(LearnModel.fromJson(responseData));

        if (learnModel.value.status == "Failed") {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${learnModel.value.message}");
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

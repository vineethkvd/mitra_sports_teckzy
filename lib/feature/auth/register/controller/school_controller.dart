import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/model/school_model/school_model.dart';

class SchoolController extends GetxController {
  var schoolListModel = SchoolListModel().obs;
  var schoolList = <SchoolList>[].obs;
  var loading = false.obs;
  var selectedSchool = ''.obs;

  Future<void> fetchSchoolData() async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.school;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
    };

    try {
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        schoolListModel.value = SchoolListModel.fromJson(responseData);

        if (schoolListModel.value.status == true) {
          print("Success to fetch school");
          schoolList.assignAll(schoolListModel.value.schoolList ?? []);
        } else {
          throw Exception('Failed to fetch school data: Status is false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        schoolListModel.value = SchoolListModel.fromJson(responseData);

        if (schoolListModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch school data: ${schoolListModel.value.message}");
          }
          // Handle unauthorized access, maybe navigate to login
        } else {
          throw Exception('Failed to fetch school data: Unexpected status');
        }
      } else {
        throw Exception('Failed to fetch school data: Unexpected error');
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

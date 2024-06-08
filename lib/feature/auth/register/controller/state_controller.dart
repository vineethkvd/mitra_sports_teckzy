import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/model/state_model/state_model.dart';

class StateController extends GetxController {
  var stateModelList = StateModelList().obs;
  var stateList = <StateList>[].obs;
  var loading = false.obs;
  var selectedState = ''.obs;

  Future<void> fetchSateData() async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.state;
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
        stateModelList.value = StateModelList.fromJson(responseData);

        if (stateModelList.value.status == "Success") {
          print("Success to fetch sate data");
          stateList.assignAll(stateModelList.value.stateList ?? []);
        } else {
          throw Exception('Failed to fetch state data: Status is false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        stateModelList.value = StateModelList.fromJson(responseData);

        if (stateModelList.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch gender data: ${stateModelList.value.message}");
          }
          // Handle unauthorized access, maybe navigate to login
        } else {
          throw Exception('Failed to fetch state data: Unexpected status');
        }
      } else {
        throw Exception('Failed to fetch state data: Status is not "Success"');
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

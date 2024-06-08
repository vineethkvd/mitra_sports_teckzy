import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/model/trainer_model/trainer_model.dart';

class TrainerController extends GetxController {
  var trainerListModel = TrainerListModel().obs;
  var trainerList = <TrainerList>[].obs;
  var loading = false.obs;
  var selectedTrainer = ''.obs;

  Future<void> fetchTrainerData(int schoolId) async {
    loading.value = true;
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.trainer;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
      "school_id": schoolId,
    };

    try {
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        trainerListModel.value = TrainerListModel.fromJson(responseData);

        if (trainerListModel.value.status == "Success") {
          print("Success to fetch tainer");
          trainerList.assignAll(trainerListModel.value.trainerList ?? []);
          print(responseData);
        } else {
          throw Exception('Failed to fetch trainer data: Status is false');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        trainerListModel.value = TrainerListModel.fromJson(responseData);

        if (trainerListModel.value.status == false) {
          if (kDebugMode) {
            print(
                "Failed to fetch trainer data: ${trainerListModel.value.message}");
          }
          // Handle unauthorized access, maybe navigate to login
        } else {
          throw Exception('Failed to fetch trainer data: Unexpected status');
        }
      } else {
        throw Exception('Failed to fetch trainer data: Unexpected error');
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

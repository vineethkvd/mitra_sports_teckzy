import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; // Ensure this import is here for showing dialogs
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/model/myRecordsModel/myRecords_model/records_model/records_model.dart';

class RecordsController extends GetxController {
  var recordsModel = RecordsModel().obs;
  var recordList = <RecordList>[].obs;
  var date = ''.obs;
  var time = ''.obs;
  var selectedGameId = ''.obs;

  @override
  void onInit() {
    super.onInit();
    ever(recordList, (List<RecordList> newList) {
      if (newList.isNotEmpty) {
        _showNewRecordDialog();
      }
    });
  }

  Future<void> splitDate({required String dateTimeString}) async {
    List<String> dateTimeParts = dateTimeString.split(" ");
    date.value = dateTimeParts[0];
    time.value = dateTimeParts[1].split(".")[0];
  }

  Future<void> fetchRecordsData() async {
    recordList.clear();
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.records;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    final requestData = {
      "api_key": apiToken,
      "user_id": userId,
      "game_id": selectedGameId.value
    };

    try {
      print("Sending request: $requestData");
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      print("Response received from records: $response");

      if (response != null && response.statusCode == 200) {
        final responseData = json.decode(response.body);
        recordsModel.value = RecordsModel.fromJson(responseData);

        if (recordsModel.value.status == true) {
          print("Success to fetch history");
          recordList.assignAll(recordsModel.value.recordList ?? []);
          print("responsedata:$responseData");
        } else {
          throw Exception('Failed to fetch history data: Status is false');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        recordsModel.value = RecordsModel.fromJson(responseData);

        if (recordsModel.value.status == false) {
          if (kDebugMode) {
            print("Failed to fetch gender data: ${recordsModel.value.message}");
          }
          // Handle unauthorized access, maybe navigate to login
        } else {
          throw Exception('Failed to fetch gender data: Unexpected status');
        }
      } else {
        throw Exception('Failed to fetch gender data: Unexpected error');
      }
    } catch (error) {
      if (kDebugMode) {
        print("Error: $error");
      }
    } finally {
      baseController.hideLoading();
    }
  }

  void _showNewRecordDialog() {
    Get.dialog(
      AlertDialog(
        title: Text('Congratulations!'),
        content: Text('You have made a new record in ${recordList.first.gameTypeName}'),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}

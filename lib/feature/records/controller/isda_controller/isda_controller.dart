import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/records/model/isdaRecordsModel/isda_model/isda_model.dart';
import '../../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../../core/helpers/network/helpers/base_client.dart';
import '../../../../core/helpers/network/helpers/base_controller.dart';

class IsdaController extends GetxController {
  var isdaModel = const IsdaModel().obs;
  var dataList = <Data>[].obs;
  var loading = false.obs;
  var selectedGameId = ''.obs;
  var selectedGenderId = ''.obs;
  var selectedAgeId = ''.obs;

  Future<void> fetchIsda() async {
    dataList.clear();
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.isdarecords;
    const apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
      "gender_id": selectedGenderId.value,
      "game_type_id": selectedGameId.value,
      "age_id": selectedAgeId.value,
    };

    print(requestData);

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        isdaModel(IsdaModel.fromJson(responseData));

        if (isdaModel.value.status == "Success") {
          print("Success to fetch isda");
          print("isda:${responseData}");

          dataList.assignAll(isdaModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        isdaModel(IsdaModel.fromJson(responseData));

        if (isdaModel.value.status == "Failed") {
          if (kDebugMode) {
            print("Failed to fetch slider data: ${isdaModel.value.message}");
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
      baseController.hideLoading();
    }
  }

  void filterIsdaData(int minAge, int maxAge) {
    var filteredData = dataList.where((data) {
      return data.age! >= minAge && data.age! <= maxAge;
    }).toList();
    dataList.assignAll(filteredData);
  }
}

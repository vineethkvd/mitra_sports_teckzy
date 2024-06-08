import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/model/district_model/district_model.dart';

class DistrictController extends GetxController {
  var districtModelList = DistrictModelList().obs;
  var districtList = <DistrictList>[].obs;
  var loading = false.obs;
  var selectedDistrict = ''.obs; 

  Future<void> fetchDistrictData(int stateId) async {
    loading.value = true;
    final baseController = BaseController();
    final apiUrl = ApiEndPoints.baseURL + ApiEndPoints.district;
    final apiToken = ApiEndPoints.apiToken;
    final requestData = {
      "api_key": apiToken,
      "state_id": stateId.toString(), // Pass the selected state ID
    };

    try {
      final baseClient = BaseClient();
      final response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        List<dynamic> data = responseData['Data'];
        List<DistrictList> districts =
            data.map((item) => DistrictList.fromJson(item)).toList();
        districtList.assignAll(districts);
        print("District Data Fetch Success");
      } else {
        throw Exception('Failed to fetch district data');
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

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mitra_sports_teckzy/feature/profile/model/editProfile_model/editProfile_model.dart';

class EditProfileController extends GetxController {
  var editProfileModel = EditProfileModel().obs;
  var loading = false.obs;

  final Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;

  Rx<PlatformFile?> profilePhoto = Rx<PlatformFile?>(null);

  Future<void> UpdateProfile({
    required PlatformFile? profilePhoto,
  }) async {
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.updateProfilePic;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');

    loading.value = true;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['user_id'] = userId.toString();

      // Add files if present
      if (profilePhoto != null) {
        request.files.add(await http.MultipartFile.fromPath(
            'profile_pic', profilePhoto.path!,
            filename: profilePhoto.name));
      }
      // Print the data being sent to the backend
      print('Register Request Data: ${request.fields}');
      // Send request
      var response = await request.send();

      // Check response status
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseData = await response.stream.bytesToString();
        editProfileModel.value =
            EditProfileModel.fromJson(json.decode(responseData));
        loading.value = false;

        // Navigate back to the login screen and show success message
        Get.back();
        CustomSnackBar.showCustomSnackBar(
          title: 'Profile Updated successful',
          message: 'Your Profile Picture has been Updated.',
        );
      } else {
        var responseData = await response.stream.bytesToString();
        loading.value = false;
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Failed to Update Profile Picture',
          message:
              'Request failed with status: ${response.statusCode}, Response: $responseData',
        );
      }
    } catch (e) {
      loading.value = false;
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Failed to Update Profile Picture',
        message: e.toString(),
      );
    }
  }
}

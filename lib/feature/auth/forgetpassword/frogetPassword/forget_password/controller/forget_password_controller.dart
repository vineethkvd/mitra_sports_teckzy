import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import '../../otp_screen/view/otp_screen.dart';
import '../model/forget_password_model.dart';

class ForgetPasswordController extends GetxController {
  var forgetPasswordModel = const ForgetPasswordModel().obs;
  var loading = true.obs;

  final Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;
  final Rx<TextEditingController> email = TextEditingController().obs;

  Future<void> sendOtp() async {
    loading.value = false;
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.forgetPassword;
    const apiToken = ApiEndPoints.apiToken;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['email'] = email.value.text.trim();

      // Print the data being sent to the backend
      print('Send OTP Request Data: ${request.fields}');

      // Send request
      var response = await request.send();

      // Check response status
      if (response.statusCode >= 200 && response.statusCode < 300) {
        loading.value = true;

        CustomSnackBar.showCustomSnackBar(
          message: "OTP sent successfully",
          title: "Success",
        );
        Get.to(() => const OtpScreen());
      } else {
        var responseData = await response.stream.bytesToString();
        loading.value = true;
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Send OTP failed',
          message:
              'Request failed with status: ${response.statusCode}, Response: $responseData',
        );
      }
    } catch (e) {
      loading.value = true;
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Send OTP failed',
        message: e.toString(),
      );
    }
  }

  // Future<bool> verifyOtp(String userOtp) async {
  //   const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.verifyOtp;
  //   const apiToken = ApiEndPoints.apiToken;
  //
  //   try {
  //     var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
  //
  //     // Add fields
  //     request.fields['api_key'] = apiToken;
  //     request.fields['email'] = email.value.text.trim();
  //     request.fields['otp'] = userOtp;
  //
  //     // Print the data being sent to the backend
  //     print('Verify OTP Request Data: ${request.fields}');
  //
  //     // Send request
  //     var response = await request.send();
  //
  //     // Check response status
  //     if (response.statusCode >= 200 && response.statusCode < 300) {
  //       var responseData = await response.stream.bytesToString();
  //       var result = json.decode(responseData);
  //       return result['status'] == true;
  //     } else {
  //       var responseData = await response.stream.bytesToString();
  //       CustomSnackBar.showCustomErrorSnackBar(
  //         title: 'Verify OTP failed',
  //         message: 'Request failed with status: ${response.statusCode}, Response: $responseData',
  //       );
  //       return false;
  //     }
  //   } catch (e) {
  //     CustomSnackBar.showCustomErrorSnackBar(
  //       title: 'Verify OTP failed',
  //       message: e.toString(),
  //     );
  //     return false;
  //   }
  // }
}

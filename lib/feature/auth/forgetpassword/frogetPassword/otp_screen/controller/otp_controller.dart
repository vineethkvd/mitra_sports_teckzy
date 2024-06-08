import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:otp_text_field/otp_field.dart';

class OtpController extends GetxController {
  var otpFieldController = Rxn<OtpFieldController>();

  var enteredOtp = ''.obs;
  var backendOtp = ''.obs; // Store the OTP received from the backend
  var loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    otpFieldController.value = OtpFieldController();
  }

  Future<bool> verifyOtp(String userOtp, String email) async {
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.verifyOtp;
    const apiToken = ApiEndPoints.apiToken;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['email_id'] = email;
      request.fields['otp'] = userOtp;

      // Print the data being sent to the backend
      print('Verify OTP Request Data: ${request.fields}');

      // Send request
      var response = await request.send();

      // Check response status
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseData = await response.stream.bytesToString();
        var result = json.decode(responseData);
        return result['status'] == true;
      } else {
        var responseData = await response.stream.bytesToString();
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Verify OTP failed',
          message:
              'Request failed with status: ${response.statusCode}, Response: $responseData',
        );
        return false;
      }
    } catch (e) {
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Verify OTP failed',
        message: e.toString(),
      );
      return false;
    }
  }

  bool checkOtp() {
    // Compare the entered OTP with the backend OTP
    if (enteredOtp == backendOtp.value) {
      CustomSnackBar.showCustomSnackBar(
        message: "OTP verified successfully",
        title: "Success",
      );
      return true;
    } else {
      CustomSnackBar.showCustomErrorSnackBar(
        message: "Invalid OTP",
        title: "Error",
      );
      return false;
    }
  }
}

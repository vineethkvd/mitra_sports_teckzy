import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:mitra_sports_teckzy/feature/auth/login/view/login_screen.dart';
import '../model/change_password_model.dart';

class ChangePasswordController extends GetxController {
  var changePasswordModel = const ChangePasswordModel().obs;
  var loading = true.obs;

  final Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;
  final Rx<TextEditingController> password = TextEditingController().obs;
  final Rx<TextEditingController> confirmPassword = TextEditingController().obs;

  Future<void> changePassword(String email) async {
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.changePassword;
    const apiToken = ApiEndPoints.apiToken;

    final requestData = {
      "api_key": apiToken,
      "new_password": password.value.text,
      "confirm_password": confirmPassword.value.text,
      "email_id": email,
    };

    loading.value = false;

    try {
      var response = await http.post(
        Uri.parse(apiUrl),
       // headers: {"Content-Type": "application/json"},
        body: requestData,
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseData = json.decode(response.body);
        changePasswordModel(ChangePasswordModel.fromJson(responseData));
        if (changePasswordModel.value.status == true) {
          CustomSnackBar.showCustomSnackBar(
            title: 'Success',
            message: 'Password changed successfully',
          );
          Get.offAll(() => const LoginScreen());
        } else {
          CustomSnackBar.showCustomErrorSnackBar(
            title: 'Error',
            message: changePasswordModel.value.message ??
                'Failed to change password',
          );
        }
      } else {
        throw Exception('Failed to change password');
      }
    } catch (e) {
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Error',
        message: e.toString(),
      );
    } finally {
      loading.value = true;
    }
  }
}

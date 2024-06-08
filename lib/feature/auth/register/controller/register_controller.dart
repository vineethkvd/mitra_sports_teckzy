import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/model/register_model/register_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  var registerModel = const RegisterModel().obs;
  var loading = false.obs;
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(1990);
  DateTime last = DateTime.now();
  final Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;

  final Rx<TextEditingController> nameController = TextEditingController().obs;
  final Rx<TextEditingController> dobController = TextEditingController().obs;
  final Rx<TextEditingController> parentController =
      TextEditingController().obs;
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> phoneController = TextEditingController().obs;
  final Rx<TextEditingController> addressController =
      TextEditingController().obs;
  final Rx<TextEditingController> pincodeController =
      TextEditingController().obs;
  final Rx<TextEditingController> passwordController =
      TextEditingController().obs;
  final Rx<TextEditingController> confirmPasswordController =
      TextEditingController().obs;

  // File pick fields
  Rx<PlatformFile?> idProof = Rx<PlatformFile?>(null);
  Rx<PlatformFile?> profilePhoto = Rx<PlatformFile?>(null);

  Future<void> fetchDate(
      {required BuildContext context,
      required TextEditingController controller}) async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );
    if (date != null) {
      controller.text = DateFormat('dd-MM-yyyy').format(date.toLocal());
      update(); // Update the state to reflect the changes
    }
  }

  Future<void> registerUser({
    required String name,
    required String parentName,
    required int gender,
    required String email,
    required String phone,
    required String dob,
    required int schoolId,
    required int trainerId,
    required String address,
    required int districtId,
    required String state,
    required String pincode,
    required String password,
    required String confirmPassword,
    PlatformFile? idProof,
    PlatformFile? profilePhoto,
  }) async {
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.register;
    const apiToken = ApiEndPoints.apiToken;

    loading.value = true;

    try {
      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));

      // Add fields
      request.fields['api_key'] = apiToken;
      request.fields['name'] = name;
      request.fields['parent_name'] = parentName;
      request.fields['gender'] = gender.toString();
      request.fields['email'] = email;
      request.fields['phone'] = phone;
      request.fields['dob'] = dob.toString();
      request.fields['school_id'] = schoolId.toString();
      request.fields['trainer_id'] = trainerId.toString();
      request.fields['address'] = address;
      request.fields['district'] = districtId.toString();
      request.fields['state'] = state;
      request.fields['pincode'] = pincode;
      request.fields['password'] = password;
      request.fields['confirm_pass'] = confirmPassword;

      // Add files if present
      if (idProof != null) {
        request.files
            .add(await http.MultipartFile.fromPath('proof', idProof.path!));
      }
      if (profilePhoto != null) {
        request.files.add(
            await http.MultipartFile.fromPath('profile', profilePhoto.path!));
      }
// Print the data being sent to the backend
      print('Register Request Data: ${request.fields}');
      // Send request
      var response = await request.send();

      // Check response status
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var responseData = await response.stream.bytesToString();
        registerModel.value = RegisterModel.fromJson(json.decode(responseData));
        loading.value = false;
        print("registerData: $responseData");
        // Navigate back to the login screen and show success message
        Get.back();
        CustomSnackBar.showCustomSnackBar(
          title: 'Registration successful',
          message: 'You can now log in with your credentials.',
        );
      } else {
        var responseData = await response.stream.bytesToString();
        loading.value = false;
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Registration failed',
          message:
              //'Request failed with status: ${response.statusCode},
              ' Response: $responseData',
        );
      }
    } catch (e) {
      loading.value = false;
      CustomSnackBar.showCustomErrorSnackBar(
        title: 'Registration failed',
        message: e.toString(),
      );
    }
  }
}

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_button.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_textfield.dart';
import 'package:mitra_sports_teckzy/feature/auth/login/repository/validator.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/controller/district_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/controller/gender_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/controller/register_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/controller/school_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/controller/state_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/controller/trainer_controller.dart';
import 'package:path/path.dart' as path;

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
// Password visibility state
  final RxBool isPasswordVisible = false.obs;
  final RxBool isConfirmPasswordVisible = false.obs;

  final RegisterController _registerController = Get.put(RegisterController());
  final GenderController _genderController = Get.put(GenderController());
  final StateController _stateController = Get.put(StateController());
  final DistrictController _districtController = Get.put(DistrictController());
  final SchoolController _schoolController = Get.put(SchoolController());
  final TrainerController _trainerController = Get.put(TrainerController());

  void _onStateSelected(int stateId) {
    _districtController.fetchDistrictData(stateId);
    _districtController.selectedDistrict.value = '';
  }

  void _onSchoolSelected(int schoolId) {
    _trainerController.fetchTrainerData(schoolId);
    _trainerController.selectedTrainer.value = '';
  }

  @override
  void initState() {
    super.initState();
    _genderController.fetchGenderData();
    _stateController.fetchSateData();
    _schoolController.fetchSchoolData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Registration',
          style: TextStyle(fontFamily: 'poppinsSemiBold'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: _buildLabelAndField(
                      'Name',
                      _registerController.nameController.value,
                      validator: (value) => Validator.validateName(name: value),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel('Gender'),
                        Obx(
                          () => DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(13, 10, 5, 10),
                              hintText: 'Gender',
                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsMedium",
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: AppColor.txtColorMain,
                                    width: 1.5), // Change color here
                              ),
                            ),
                            value: _genderController
                                    .selectedGender.value.isNotEmpty
                                ? _genderController.selectedGender.value
                                : null,
                            items: _genderController.genderList.map((gender) {
                              return DropdownMenuItem<String>(
                                value: gender.genderId.toString(),
                                child: Text(
                                  gender.genderName ?? " ",
                                  style: const TextStyle(
                                      fontFamily: 'poppinsSemiBold'),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              _genderController.selectedGender.value =
                                  newValue!;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Date Of Birth',
                _registerController.dobController.value,
                validator: (value) => Validator.validateInput(input: value),
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () => _registerController.fetchDate(
                      context: context,
                      controller: _registerController.dobController.value),
                ),
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Parents/Guardian Name',
                _registerController.parentController.value,
                validator: (value) => Validator.validateName(name: value),
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Email',
                keyboardType: TextInputType.emailAddress,
                _registerController.emailController.value,
                validator: (value) => Validator.validateEmail(email: value),
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Phone Number',
                keyboardType: TextInputType.number,
                _registerController.phoneController.value,
                validator: (value) =>
                    Validator.validatePhoneNumber(phoneNumber: value),
              ),
              SizedBox(height: 16.h),
              _buildLabel('Academic Institution Name'),
              Obx(
                () => DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(13, 10, 13, 10),
                    hintText: 'Academic Institution Name',
                    hintStyle: TextStyle(
                      fontSize: 13.sp,
                      color: AppColor.txtColorMain,
                      fontFamily: "poppinsMedium",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: AppColor.txtColorMain,
                          width: 1.5), // Change color here
                    ),
                  ),
                  value: _schoolController.selectedSchool.value.isNotEmpty
                      ? _schoolController.selectedSchool.value
                      : null,
                  items: _schoolController.schoolList.map((school) {
                    return DropdownMenuItem<String>(
                      value: school.schoolId.toString(),
                      child: Text(
                        school.schoolName ?? " ",
                        style: TextStyle(fontFamily: 'poppinsSemiBold'),
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    if (newValue != null) {
                      _schoolController.selectedSchool.value = newValue;
                      int schoolId = int.parse(newValue);
                      _onSchoolSelected(schoolId);
                    }
                  },
                ),
              ),
              SizedBox(height: 16.h),
              _buildLabel('Trainer Name'),
              Obx(
                () => DropdownButtonFormField<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    hintText: 'Trainer Name',
                    hintStyle: TextStyle(
                      fontSize: 13.sp,
                      color: AppColor.txtColorMain,
                      fontFamily: "poppinsMedium",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black54, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: AppColor.txtColorMain,
                          width: 1.5), // Change color here
                    ),
                  ),
                  value: _trainerController.selectedTrainer.value.isNotEmpty
                      ? _trainerController.selectedTrainer.value
                      : null,
                  items: _trainerController.trainerList.map((trainer) {
                    return DropdownMenuItem<String>(
                      value: trainer.trainerId.toString(),
                      child: Column(
                        children: [
                          Text(
                            trainer.trainerName ?? "",
                            style: TextStyle(fontFamily: 'poppinsSemiBold'),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    _trainerController.selectedTrainer.value = newValue!;
                    print(
                        'Selected Trainer ID: ${_trainerController.selectedTrainer.value}');
                  },
                ),
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Address',
                _registerController.addressController.value,
                validator: (value) => Validator.validateInput(input: value),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel('State'),
                        Obx(
                          () => DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(13, 10, 13, 10),
                              hintText: 'State',
                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsMedium",
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: AppColor.txtColorMain,
                                    width: 1.5), // Change color here
                              ),
                            ),
                            value:
                                _stateController.selectedState.value.isNotEmpty
                                    ? _stateController.selectedState.value
                                    : null,
                            items: _stateController.stateList.map((state) {
                              return DropdownMenuItem<String>(
                                value: state.stateId.toString(),
                                child: Text(
                                  state.stateName ?? " ",
                                  style:
                                      TextStyle(fontFamily: 'poppinsSemiBold'),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              if (newValue != null) {
                                _stateController.selectedState.value = newValue;
                                int stateId = int.parse(newValue);
                                _onStateSelected(stateId);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel('District'),
                        Obx(
                          () => DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              hintText: 'District',
                              hintStyle: TextStyle(
                                fontSize: 13.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsMedium",
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    color: AppColor.txtColorMain,
                                    width: 1.5), // Change color here
                              ),
                            ),
                            value: _districtController
                                    .selectedDistrict.value.isNotEmpty
                                ? _districtController.selectedDistrict.value
                                : null,
                            items: _districtController.districtList
                                .map((district) {
                              return DropdownMenuItem<String>(
                                value: district.districtId.toString(),
                                child: Text(
                                  district.districtName ?? "",
                                  style:
                                      TextStyle(fontFamily: 'poppinsSemiBold'),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              _districtController.selectedDistrict.value =
                                  newValue!;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Pincode',
                keyboardType: TextInputType.number,
                _registerController.pincodeController.value,
                validator: (value) => Validator.validateInput(input: value),
              ),
              SizedBox(height: 16.h),
              _buildLabel('ID Proof (Not Mandatory)'),
              _buildFilePicker(
                _registerController.idProof,
                'Choose File',
                (file) {
                  _registerController.idProof.value = file;
                },
              ),
              SizedBox(height: 16.h),
              _buildLabel('Profile Photo (Not Mandatory)'),
              _buildFilePicker(
                _registerController.profilePhoto,
                'Choose File',
                (file) {
                  _registerController.profilePhoto.value = file;
                },
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Password',
                _registerController.passwordController.value,
                obscureText: true,
                validator: (value) =>
                    Validator.validatePassword(password: value),
              ),
              SizedBox(height: 16.h),
              _buildLabelAndField(
                'Confirm Password',
                _registerController.confirmPasswordController.value,
                obscureText: true,
                validator: (value) => Validator.validateConfirmPassword(
                    password: _registerController.passwordController.value.text,
                    confirmPassword: value),
              ),
              SizedBox(height: 16.h),
              CustomButton(
                text: 'Register',
                onPressed: _registerUser,
                fontWeight: FontWeight.w700,
                //fontFamily: 'poppinsRegular',
                gradient: const LinearGradient(
                  colors: [Color(0xFF141356), Color(0xFF0095DA)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabelAndField(String label, TextEditingController controller,
      {bool obscureText = false,
      FormFieldValidator<String>? validator,
      TextInputType? keyboardType,
      IconButton? suffixIcon
      /* bool isPasswordField = false,
    bool isConfirmPasswordField = false,*/
      }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(label),
        CustomTextField1(
          keyboardType: keyboardType,
          controller: controller,
          hintText: 'Enter $label',
          obscureText: obscureText,
          validator: validator,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }

  Widget _buildFilePicker(
    Rx<PlatformFile?> file,
    String hintText,
    Function(PlatformFile) onPicked,
  ) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles();
        if (result != null) {
          onPicked(result.files.first);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 50.h,
          width: double.infinity,
          child: Center(
            child: Obx(() {
              final currentFile = file.value;
              return currentFile == null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /* Icon(
                          Icons.attach_file,
                          size: 40,
                          color: AppColor.skyBlueColor,
                        ),*/
                        Text(
                          hintText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.skyBlueColor,
                            fontFamily: 'poppinsSemiBold',
                          ),
                        ),
                      ],
                    )
                  : Text(
                      path.basename(currentFile.path!),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColor.skyBlueColor,
                        fontFamily: 'poppinsSemiBold',
                      ),
                    );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(fontFamily: 'poppinsSemiBold', fontSize: 14.sp),
      ),
    );
  }

  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      int schoolId = int.tryParse(_schoolController.selectedSchool.value) ?? 0;
      int trainerId =
          int.tryParse(_trainerController.selectedTrainer.value) ?? 0;
      int gender = int.tryParse(_genderController.selectedGender.value) ?? 0;
      int districtId =
          int.tryParse(_districtController.selectedDistrict.value) ?? 0;

      print('Parsed Trainer ID: $trainerId'); // Debugging log

      _registerController.registerUser(
        name: _registerController.nameController.value.text,
        parentName: _registerController.parentController.value.text,
        gender: int.tryParse(_genderController.selectedGender.value) ?? 0, //num
        email: _registerController.emailController.value.text,
        phone: _registerController.phoneController.value.text,
        dob: _registerController.dobController.value.text,
        schoolId: int.tryParse(
              _schoolController.selectedSchool.value,
            ) ??
            0, //num
        trainerId: int.tryParse(
              _trainerController.selectedTrainer.value,
            ) ??
            0, //num
        address: _registerController.addressController.value.text,
        districtId: int.tryParse(_districtController.selectedDistrict.value) ??
            0, //num // _districtController.selectedDistrict.value,
        state: _stateController.selectedState.value,
        pincode: _registerController.pincodeController.value.text,
        password: _registerController.passwordController.value.text,
        confirmPassword:
            _registerController.confirmPasswordController.value.text,
        idProof: _registerController.idProof.value,
        profilePhoto: _registerController.profilePhoto.value,
      );
    }
  }
}

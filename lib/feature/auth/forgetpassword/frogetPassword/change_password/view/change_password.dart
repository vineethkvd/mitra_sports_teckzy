import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_button.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_textfield.dart';
import 'package:mitra_sports_teckzy/feature/auth/forgetpassword/frogetPassword/forget_password/controller/forget_password_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/login/repository/validator.dart';
import '../controller/change_password_controller.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  final ChangePasswordController changePasswordController =
      Get.put(ChangePasswordController());
  final ForgetPasswordController forgetPasswordController =
      Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            color: Colors.white,
            width: Get.width.w,
            height: Get.height.h,
            child: SingleChildScrollView(
              child: Form(
                key: changePasswordController.formKey.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: Text(
                        "Change Your Password",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColor.headingColor,
                            fontFamily: "poppinsSemiBold"),
                      ),
                    ),
                    SizedBox(
                      height: 97.h,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.txtColorMain,
                          fontFamily: "poppinsSemiBold"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: CustomTextField1(
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        validator: (value) => Validator.validatePassword(
                            password:
                                changePasswordController.password.value.text),
                        controller: changePasswordController.password.value,
                        prefixIcon: Icons.lock,
                        hintText: ("Enter password"),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.txtColorMain,
                          fontFamily: "poppinsSemiBold"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: CustomTextField1(
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 15, 10, 15),
                        validator: (value) => Validator.validateConfirmPassword(
                            password:
                                changePasswordController.password.value.text,
                            confirmPassword: changePasswordController
                                .confirmPassword.value.text),
                        controller:
                            changePasswordController.confirmPassword.value,
                        prefixIcon: Icons.lock,
                        hintText: ("Enter password"),
                      ),
                    ),
                    CustomButton(
                      text: 'Submit',
                      onPressed: () {
                        if (changePasswordController.formKey.value.currentState!
                            .validate()) {
                          changePasswordController.changePassword(
                              forgetPasswordController.email.value.text);
                        } else {
                          print("password not same");
                        }
                      },
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontfamily: 'poppinsRegular',
                      gradient: const LinearGradient(
                          colors: [Color(0xFF141356), Color(0xFF0095DA)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_button.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_textfield.dart';
import 'package:mitra_sports_teckzy/feature/auth/forgetpassword/frogetPassword/forget_password/controller/forget_password_controller.dart';
import 'package:mitra_sports_teckzy/feature/auth/login/repository/validator.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
            child: Form(
              key: forgetPasswordController.formKey.value,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.sp),
                      child: Center(
                        child: Text(
                          "Forgot Your Password",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: AppColor.headingColor,
                              fontFamily: "poppinsSemiBold"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200.sp,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.sp),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColor.txtColorMain,
                              fontFamily: "poppinsSemiBold"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: CustomTextField1(
                        keyboardType: TextInputType.emailAddress,
                        controller: forgetPasswordController.email.value,
                        prefixIcon: Icons.email,
                        hintText: ("Enter email"),
                        validator: (value) =>
                            Validator.validateInput(input: value),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: CustomButton(
                        text: 'Get OTP',
                        onPressed: () {
                          if (forgetPasswordController
                              .formKey.value.currentState!
                              .validate()) {
                            forgetPasswordController.sendOtp();
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_button.dart';
import 'package:mitra_sports_teckzy/feature/auth/forgetpassword/frogetPassword/forget_password/controller/forget_password_controller.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../change_password/view/change_password.dart';
import '../controller/otp_controller.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final OtpController otpController = Get.put(OtpController());
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
            child: Obx(() => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Otp Verification",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: AppColor.headingColor,
                          fontFamily: "poppinsSemiBold"),
                    ),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, bottom: 10.w),
                            child: Text(
                              "Enter OTP",
                              style: TextStyle(
                                fontFamily: "Inter-Regular",
                                fontSize: 15.sp,
                                color: AppColor.blackTextColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: OTPTextField(
                              otpFieldStyle:
                                  OtpFieldStyle(backgroundColor: Colors.white),
                              controller:
                                  otpController.otpFieldController.value,
                              length: 6,
                              width: 300.w,
                              fieldWidth: 40,
                              style: TextStyle(fontSize: 16.w),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.box,
                              spaceBetween: 5,
                              onCompleted: (pin) {
                                print("Completed: $pin");
                                otpController.enteredOtp.value = pin;
                                // if (otpController.verifyOtp(otpController.)) {
                                //   Get.snackbar('Success', 'OTP verified successfully');
                                // } else {
                                //   Get.snackbar('Error', 'Invalid OTP');
                                // }
                              },
                            ),
                          ),
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: TextButton(
                          //     onPressed: () {
                          //       otpController.validateAndSendOtp();
                          //     },
                          //     child: Text(
                          //       "Resend OTP?",
                          //       style: TextStyle(
                          //         fontFamily: "Inter-Regular",
                          //         fontSize: 15.sp,
                          //         color: AppColor.blueColor,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      text: 'Submit',
                      onPressed: () async {
                        if (await otpController.verifyOtp(
                            otpController.enteredOtp.value,
                            forgetPasswordController.email.value.text)) {
                          Get.to(const ChangePassword());
                          Get.snackbar('Success', 'OTP verified successfully');
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
                )),
          ),
        ),
      ),
    );
  }
}

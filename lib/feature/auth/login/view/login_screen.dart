import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/auth/forgetpassword/frogetPassword/forget_password/view/forget_password.dart';
import 'package:mitra_sports_teckzy/feature/auth/register/view/register_screen.dart';
import '../../../../core/utils/configs/styles/colors.dart';
import '../../../../core/utils/shared/components/widgets/custom_button.dart';
import '../../../../core/utils/shared/components/widgets/custom_textfield.dart';
import '../../../../core/utils/shared/constants/assets_pathes.dart';
import '../controller/login_controller.dart';
import '../repository/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = LoginController();
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
                key: loginController.formKey.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 97.h,
                    ),
                    SizedBox(
                        width: Get.width.w,
                        height: 218.h,
                        child: Image.asset(
                          AssetsPathes.mithraaSportsLogo,
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.sp),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColor.txtColorMain,
                            fontFamily: "poppinsSemiBold"),
                      ),
                    ),
                    CustomTextField1(
                      keyboardType: TextInputType.emailAddress,
                      contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      controller: loginController.email.value,
                      prefixIcon: Icons.email,
                      hintText: ("Enter email"),
                      validator: (value) =>
                          Validator.validateEmail(email: value),
                    ),
                    SizedBox(
                      height: 20.h,
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
                        validator: (value) =>
                            Validator.validateInput(input: value),
                        controller: loginController.password.value,
                        prefixIcon: Icons.lock,
                        hintText: ("Enter password"),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => const ForgetPassword());
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.blueColor,
                              fontFamily: "poppinsSemiBold"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomButton(
                      text: 'Login',
                      onPressed: () {
                        if (loginController.formKey.value.currentState!
                            .validate()) {
                          loginController.loginUser(
                              email:
                                  loginController.email.value.text.toString(),
                              password: loginController.password.value.text
                                  .toString());
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 243.sp,
                        child: Row(
                          children: [
                            Text(
                              "Don’t have account",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsSemiBold"),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(() => RegistrationScreen());
                              },
                              child: Text(
                                "Register ? ",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.blueColor,
                                    fontFamily: "poppinsSemiBold"),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}

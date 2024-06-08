import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/feature/navbar/view/navbar_screen.dart';

import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../auth/login/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      checkLoginStatus();
      /*Get.offAll(() => LoginScreen(),
          transition: Transition.leftToRightWithFade);*/
    });
  }

  void checkLoginStatus() async {
    final storedValue = await CacheHelper.getData('userId');
    print(storedValue);
    if (storedValue != null && storedValue.isNotEmpty) {
      Get.offAll(const NavBar());
    } else {
      Get.offAll(const LoginScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 255, 255, 255),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width.w,
                  height: 388.h,
                  child: Image.asset(
                    AssetsPathes.mithraaSportsLogo,
                  ).animate().fade().slideY(
                      duration: const Duration(milliseconds: 500),
                      begin: 1,
                      curve: Curves.easeInSine),
                ),
                20.verticalSpace,
              ],
            ),
          ),
        ));
  }
}

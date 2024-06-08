import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_button.dart';
import 'package:mitra_sports_teckzy/feature/timer/view/timer_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/utils/configs/styles/colors.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: false,
            appBar: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: GradientText(
                  'Practice',
                  style:  TextStyle(
                    fontSize: 20.sp,
                    fontFamily: "poppinssemibold",
                  ),
                  colors: const [
                    Color(0xff141356),
                    Color(0xff0095DA),
                  ],
                ),
                ),
            body: Center(
              child: Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                color: AppColor.backGroundColor,
                width: Get.width.w,
                height: Get.height.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue, // Your desired border color
                            width: 2.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(15.0), // Adjust as needed
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0), // Same as Container's borderRadius
                          child: Lottie.asset(
                            "assets/json/cup_stack.json",
                            width: 250.w,
                            height: 250.h,
                            animate: true,
                            fit: BoxFit.cover,
                            repeat: true,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    SizedBox(
                      width: 200.w,
                      child: CustomButton(
                          text: "Practice",
                          fontSize: 16.sp,
                          fontfamily: "poppinssemibold",
                          gradient: const LinearGradient(
                            colors: [Color(0xFF141356), Color(0xFF0095DA)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          onPressed: () {
                            Get.to(() => const TimerScreen());
                          }),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

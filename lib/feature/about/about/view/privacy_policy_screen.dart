import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../controller/privacy_policy_controller.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  final PolicyController policyController = PolicyController();
  @override
  void initState() {
    super.initState();
    policyController.fetchPolicy();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backGroundColor,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
              transition:
              Transition.cupertino;
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: GradientText(
            'Privacy & Policy',
            style: TextStyle(
              fontSize: 20.sp,
              fontFamily: "poppinssemibold",
            ),
            colors: [
              Color(0xff141356),
              Color(0xff0095DA),
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
          color: AppColor.backGroundColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(() => policyController.data.value.isNotEmpty
                    ? Container(
                    color: AppColor.backGroundColor,
                        height: Get.height.h,
                        width: Get.width.w,
                        child: HtmlWidget(
                          policyController.data.value,
                          textStyle: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "poppinssemibold",
                          ),
                        ))
                    : Container(
                  color: AppColor.backGroundColor,
                        height: Get.height.h,
                        width: Get.width.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: Get.width * 0.3.w,
                            ),
                            const Center(child: Text("No data available"))
                          ],
                        ),
                      )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

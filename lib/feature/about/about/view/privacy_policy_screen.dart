import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../controller/privacy_policy_controller.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
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
        color: AppColor.backGroundColor,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
            color: AppColor.backGroundColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() => policyController.data.value.isNotEmpty
                      ? SingleChildScrollView(
                          child: Container(
                            width: Get.width.w,
                            child: HtmlWidget(
                              policyController.data.value,
                              textStyle: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: "poppinssemibold",
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: Get.width.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              SizedBox(height: 100),
                              Text("No data available"),
                            ],
                          ),
                        )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

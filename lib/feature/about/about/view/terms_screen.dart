import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/about/about/controller/terms_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  final TermsController termsController = TermsController();
  @override
  void initState() {
    super.initState();
    termsController.fetchTerm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Terms & Conditions',
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
        body:  Container(
          color: AppColor.backGroundColor,
          child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.w),
            color: AppColor.backGroundColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(() => termsController.data.value.isNotEmpty
                      ? SingleChildScrollView(
                        child: Container(
                        color: AppColor.backGroundColor,
                           // height: Get.height.h,
                            width: Get.width.w,
                            child: HtmlWidget(
                              termsController.data.value,
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: "poppinssemibold",
                              ),
                            )),
                      )
                      : Container(
                    color: AppColor.backGroundColor,
                         // height: Get.height.h,
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
      ),
    );
  }
}

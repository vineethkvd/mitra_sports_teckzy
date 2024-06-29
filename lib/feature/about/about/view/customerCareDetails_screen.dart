import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/about/about/controller/customerCareDetails_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomerCareDetailsScreen extends StatefulWidget {
  const CustomerCareDetailsScreen({super.key});

  @override
  State<CustomerCareDetailsScreen> createState() =>
      _CustomerCareDetailsScreenState();
}

class _CustomerCareDetailsScreenState extends State<CustomerCareDetailsScreen> {
  final CustomercaredetailsController customercaredetailsController = CustomercaredetailsController();
  @override
  void initState() {
    super.initState();
    customercaredetailsController.fetchCustomer();
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
          'Customer Care Detail',
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
                  Obx(() => customercaredetailsController.data.value.isNotEmpty
                      ? SingleChildScrollView(
                    child: Container(
                      height: Get.height.h,
                      width: Get.width.w,
                      child: HtmlWidget(
                        customercaredetailsController.data.value,
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mitra_sports_teckzy/feature/analytics/controller/analytics_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../home/performance_pie_chart/controller/performance_controller.dart';
import '../../profile/controller/profile_controller.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final ProfileController profileController = Get.put(ProfileController());
  final AnalyticsController analyticsController =
      Get.put(AnalyticsController());
  final PerformanceController performanceController =
      Get.put(PerformanceController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileController.fetchProfile();
    analyticsController.fetchAnalytics();
    performanceController.fetchPerformanceData();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
              'Analytics',
              style: const TextStyle(
                fontSize: 20,
                fontFamily: "poppinssemibold",
              ),
              colors: const [
                Color(0xff141356),
                Color(0xff0095DA),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              color: AppColor.backGroundColor,
              // width: Get.width.w,
              // height: Get.height.h,
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 60.h,
                        width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Text(
                            "Student Name : ${profileController.profileModel.value.data?.userName ?? ''}",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsSemiBold"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 60.h,
                        width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Text(
                            "Student Age : ${profileController.profileModel.value.data?.userAge.toString() ?? ''}",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsSemiBold"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 60.h,
                        width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Text(
                            "District :  ${profileController.profileModel.value.data?.district ?? ''}",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsSemiBold"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.center,
                        //width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Row(
                                  children: [
                                    Text(
                                      "No.of Games played",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColor.txtColorMain,
                                          fontFamily: "poppinsSemiBold"),
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    SizedBox(
                                      width: 145.sp,
                                      height: 50.sp,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1.sp,
                                              color: AppColor.greyColor),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xff0095DA),
                                                Color(0xff141356),
                                              ]),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft:
                                                  Radius.circular(10.0.sp),
                                              bottomRight:
                                                  Radius.circular(10.0.sp),
                                              topLeft: Radius.circular(10.0.sp),
                                              topRight: Radius.circular(10.0
                                                  .sp) //                 <--- border radius here
                                              ),
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Total Games Played",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: AppColor.whiteColor,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Obx(
                                              () => Text(
                                                "${performanceController.totalGamePlayed}",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.yellow,
                                                    fontFamily: "poppinsBold"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.sp),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.sp, color: AppColor.greyColor),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff0095DA),
                                          Color(0xff141356),
                                        ]),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0.sp),
                                        bottomRight: Radius.circular(10.0.sp),
                                        topLeft: Radius.circular(10.0.sp),
                                        topRight: Radius.circular(10.0
                                            .sp) //                 <--- border radius here
                                        ),
                                  ),
                                  padding: EdgeInsets.all(8.sp),
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: analyticsController.dailyDataList
                                        .map((element) {
                                      return Container(
                                        width: 120,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              element.gameTypeName ?? "",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor.whiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                            Text(
                                              element.overallGamesPlayed
                                                      .toString() ??
                                                  "0",
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  color: Colors.yellow,
                                                  fontFamily: "poppinsBold"),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.center,
                        // width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Text(
                                  "Best Records",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.sp, color: AppColor.greyColor),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff0095DA),
                                          Color(0xff141356),
                                        ]),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0.sp),
                                        bottomRight: Radius.circular(10.0.sp),
                                        topLeft: Radius.circular(10.0.sp),
                                        topRight: Radius.circular(10.0
                                            .sp) //                 <--- border radius here
                                        ),
                                  ),
                                  padding: EdgeInsets.all(8.sp),
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: analyticsController.dailyDataList
                                        .map((element) {
                                      return Container(
                                        width: 120,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              element.gameTypeName ?? "",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor.whiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                            Text(
                                              element.overallMinTime ?? "0",
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.yellow,
                                                  fontFamily: "poppinsBold"),
                                            ),
                                            Text(
                                              element.overallMinTimeDate ?? "",
                                              style: TextStyle(
                                                  fontFamily: "poppinsSemiBold",
                                                  fontSize: 8.sp,
                                                  color: Colors.tealAccent),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.center,
                        //width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Text(
                                  "No.of Games played Today",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.sp),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.sp, color: AppColor.greyColor),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff0095DA),
                                          Color(0xff141356),
                                        ]),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0.sp),
                                        bottomRight: Radius.circular(10.0.sp),
                                        topLeft: Radius.circular(10.0.sp),
                                        topRight: Radius.circular(10.0
                                            .sp) //                 <--- border radius here
                                        ),
                                  ),
                                  padding: EdgeInsets.all(8.sp),
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: analyticsController.dailyDataList
                                        .map((element) {
                                      return Container(
                                        width: 120,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              element.gameTypeName ?? "",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor.whiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                            Text(
                                              element.gamesPlayed.toString() ??
                                                  "0",
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  color: Colors.yellow,
                                                  fontFamily: "poppinsBold"),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.center,
                        //width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Text(
                                  "No.of Games played This Week",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.sp),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.sp, color: AppColor.greyColor),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff0095DA),
                                          Color(0xff141356),
                                        ]),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0.sp),
                                        bottomRight: Radius.circular(10.0.sp),
                                        topLeft: Radius.circular(10.0.sp),
                                        topRight: Radius.circular(10.0
                                            .sp) //                 <--- border radius here
                                        ),
                                  ),
                                  padding: EdgeInsets.all(8.sp),
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: analyticsController.weeklyDataList
                                        .map((element) {
                                      return Container(
                                        width: 120,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              element.gameTypeName ?? "",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor.whiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                            Text(
                                              element.gamesPlayed.toString() ??
                                                  "0",
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  color: Colors.yellow,
                                                  fontFamily: "poppinsBold"),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.sp),
                      child: Container(
                        alignment: Alignment.center,
                        //width: Get.width.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                            color:
                                Colors.black38, // This adds a blue color border
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Text(
                                  "No.of Games played This Month",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColor.txtColorMain,
                                      fontFamily: "poppinsSemiBold"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.sp),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.sp, color: AppColor.greyColor),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff0095DA),
                                          Color(0xff141356),
                                        ]),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0.sp),
                                        bottomRight: Radius.circular(10.0.sp),
                                        topLeft: Radius.circular(10.0.sp),
                                        topRight: Radius.circular(10.0
                                            .sp) //                 <--- border radius here
                                        ),
                                  ),
                                  padding: EdgeInsets.all(8.sp),
                                  child: Wrap(
                                    alignment: WrapAlignment.center,
                                    children: analyticsController
                                        .monthlyDataList
                                        .map((element) {
                                      return Container(
                                        width: 120,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              element.gameTypeName ?? "",
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  color: AppColor.whiteColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily:
                                                      "poppinsSemiBold"),
                                            ),
                                            Text(
                                              element.gamesPlayed.toString() ??
                                                  "0",
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  color: Colors.yellow,
                                                  fontFamily: "poppinsBold"),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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

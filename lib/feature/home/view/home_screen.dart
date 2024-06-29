import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/home/view/lineGraph.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/myRecords_controller/gameType_controller.dart';
import 'package:mitra_sports_teckzy/feature/slider/view/widget/slider_widget.dart';
import '../../slider/controller/slider_controller.dart';

import '../performance_pie_chart/controller/performance_controller.dart';
import '../performance_pie_chart/view/performance_graph.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SliderController sliderController = Get.put(SliderController());
  final PerformanceController performanceController =
      Get.put(PerformanceController());
  final GameTypeController gameTypeController = Get.put(GameTypeController());

  @override
  void initState() {
    super.initState();
    sliderController.fetchSliderData();
    performanceController.fetchPerformanceData();
    gameTypeController.fetchGameData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: RefreshIndicator(
            child: Container(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              color: AppColor.backGroundColor,
              width: Get.width,
              height: Get.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child:
                          SizedBox(height: 173.h, child: const SliderWidget()),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SizedBox(
                          height: 160.h,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColor.greyColor),
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
                                    topRight: Radius.circular(
                                        10.0.sp) //                 <--- border radius here
                                ),),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "Available Game Types in Timer",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontFamily: "poppinsSemiBold",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Divider(),
                                  Expanded(
                                    child: Obx(() {
                                      if (gameTypeController.gameList.isEmpty) {
                                        return const Text(
                                            "No game types available");
                                      } else {
                                        return Wrap(
                                          spacing: 40.w,
                                          runSpacing: 10.h,
                                          children: gameTypeController.gameList
                                              .map((game) {
                                            return Container(

                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1, color: AppColor.greyColor),
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [Colors.green, Colors.green.withOpacity(0.2)],
                                                ),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(10.0.sp),
                                                    bottomRight: Radius.circular(10.0.sp),
                                                    topLeft: Radius.circular(10.0.sp),
                                                    topRight: Radius.circular(
                                                        10.0.sp) //                 <--- border radius here
                                                ),),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  game.gameName ?? '',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.sp,
                                                    fontFamily: "poppinsMedium",
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        );
                                      }
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.sp, horizontal: 10.sp),
                      child: PerformanceGraph(),
                    ),
                    Text("Performance Report",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.performancetxtColor,
                        ),
                    ),
                    LineGraphWidget(),
                  ],
                ),
              ),
            ),
            onRefresh: () => sliderController.fetchSliderData(),
          ),
        ),
      ),
    );
  }
}

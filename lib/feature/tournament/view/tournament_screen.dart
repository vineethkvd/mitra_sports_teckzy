import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../controller/tournament_controller.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  final TournamentController tournamentController = TournamentController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tournamentController.fetchTournaments();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backGroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.backGroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            title: GradientText(
              'Tournament',
              style: const TextStyle(
                fontSize: 20,
                fontFamily: "poppinssemibold",
              ),
              colors: const [
                Color(0xff141356),
                Color(0xff0095DA),
              ],
            ),
            centerTitle: true,
          ),
          body: RefreshIndicator(
            child: Container(
              width: Get.width.w,
              height: Get.height.h,
              color: AppColor.backGroundColor,
              padding: EdgeInsets.only(
                  left: 5.sp, right: 5.sp, top: 5.sp, bottom: 10.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0.w),
                    child: Text(
                      "Upcoming Tournaments",
                      style: TextStyle(
                        color: AppColor.blueColor,
                        fontSize: 16.sp,
                        fontFamily: "poppinsSemiBold",
                      ),
                    ),
                  ),
                  Obx(() {
                    if (tournamentController.dataList.isEmpty) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "No Data available",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsRegular",
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 50.h),
                          child: ListView.builder(
                            itemCount: tournamentController.dataList.length,
                            itemBuilder: (context, index) {
                              final data = tournamentController.dataList[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.h, horizontal: 10.h),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "${data.tournName}",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.blackTextColor,
                                                fontFamily: "poppinsSemiBold",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "${data.tournType}",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              color: AppColor.blackTextColor,
                                              fontFamily: "poppinsSemiBold",
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${data.gameName}",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      AppColor.blackTextColor,
                                                  fontFamily: "poppinsSemiBold",
                                                ),
                                              ),
                                              Text(
                                                "${data.tournDetails}",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color:
                                                      AppColor.blackTextColor,
                                                  fontFamily: "poppinsSemiBold",
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                "${data.tournDate}",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      AppColor.blackTextColor,
                                                  fontFamily: "poppinsSemiBold",
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 8.0.w),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Material(
                                                color: Colors.transparent,
                                                child: Ink(
                                                  decoration: BoxDecoration(
                                                    gradient:
                                                        const LinearGradient(
                                                      colors: [
                                                        Color(0xFF141356),
                                                        Color(0xFF0095DA)
                                                      ],
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      stops: [0.0, 0.9],
                                                      tileMode: TileMode.clamp,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0.r),
                                                  ),
                                                  child: InkWell(
                                                    onTap: () {
                                                      tournamentController
                                                          .launUrl(
                                                              data.tournUrl ??
                                                                  '');
                                                    },
                                                    child: Container(
                                                      width: 70.w,
                                                      height: 30.h,
                                                      alignment:
                                                          Alignment.center,
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Register",
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .whiteColor,
                                                              fontSize: 12.0.sp,
                                                              fontFamily:
                                                                  "poppinsSemiBold"),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }
                  }),
                ],
              ),
            ),
            onRefresh: () => tournamentController.fetchTournaments(),
          ),
        ),
      ),
    );
  }
}

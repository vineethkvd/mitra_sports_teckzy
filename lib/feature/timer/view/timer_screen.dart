import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:mitra_sports_teckzy/feature/history/view/history_screen.dart';
import 'package:mitra_sports_teckzy/feature/navbar/view/navbar_screen.dart';
import 'package:mitra_sports_teckzy/feature/timer/controller/gameList_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../controller/timer_controller.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  final TimerGameType timerGameType = Get.put(TimerGameType());
  final TimerController timerController = Get.put(TimerController());

  bool leftTapped = false;
  bool rightTapped = false;

  @override
  void initState() {
    super.initState();
    _setLandscapeOrientation();
    timerController.stopTimer();
    timerGameType.fetchGameTypeData();
  }

  void _setPortraitOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void _setLandscapeOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    _setPortraitOrientation();
    super.dispose();
  }

  void handleTap() async {
    print(
        "handleTap called. Left tapped: $leftTapped, Right tapped: $rightTapped");
    if (leftTapped && rightTapped) {
      if (timerController.isRunning.value) {
        print("Stopping timer from handleTap");
        await timerController.stopTimer();
      } else {
        print("Checking start timer from handleTap");
        await timerController.checkStartTimer();
      }
      leftTapped = false;
      rightTapped = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: AppColor.skyBlueColor,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    timerController.resetAllFields();
                    Get.to(const NavBar(), transition: Transition.cupertino);
                    _setPortraitOrientation();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
              title: GradientText(
                'Practice',
                style:  TextStyle(
                  fontSize: 12.sp,
                  fontFamily: "poppinssemibold",
                ),
                colors: const [
                  Color(0xff141356),
                  Color(0xff0095DA),
                ],
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      Flexible(
                          child: IconButton(
                              onPressed: () {
                                Get.to(() => const HistoryScreen());
                              },
                              icon: const Icon(Icons.history))),
                      Text(
                        'History',
                        style: TextStyle(
                          fontSize: 7.0.sp,
                          fontFamily: "poppinsMedium",
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            body: Container(
              padding: EdgeInsets.only(left: 10.w),
              color: AppColor.backGroundColor,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(() {
                                if (timerGameType.gameList.isEmpty) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else {
                                  return Container(
                                    height: 60.h,
                                    width: 90.w,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: DropdownButtonFormField<String>(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                      isExpanded: true,
                                      value: timerGameType
                                              .selectedGameId.value.isEmpty
                                          ? null
                                          : timerGameType.selectedGameId.value,
                                      hint: const Text('Select game'),
                                      items: timerGameType.gameList.map((game) {
                                        return DropdownMenuItem<String>(
                                          value: game.gameTypeId.toString(),
                                          child: Text(game.gameName ?? ''),
                                        );
                                      }).toList(),
                                      onChanged: (newValue) {
                                        timerGameType.selectedGameId.value =
                                            newValue!;
                                        timerController
                                            .onGameTypeChanged(newValue!);
                                      },
                                    ),
                                  );
                                }
                              }),
                             Spacer(flex: 1,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Obx(() {
                                    Color leftColor = timerController
                                        .leftIndicatorColor.value;
                                    Color rightColor = timerController
                                        .rightIndicatorColor.value;

                                    if (rightColor == Colors.red) {
                                      leftColor = Colors.white;
                                    }
                                    return Container(
                                      width: 20.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(90.r),
                                        color: leftColor,
                                        border: Border.all(
                                            width: 2.w,
                                            color: AppColor.txtColorMain),
                                      ),
                                    );
                                  }),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Obx(
                                    () => Container(
                                      width: 20.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(90.r),
                                        color: timerController
                                            .rightIndicatorColor.value,
                                        border: Border.all(
                                            width: 2.w,
                                            color: AppColor.txtColorMain),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(flex: 3,),
                            ],
                          ),
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: /*() async {
                                  if (timerGameType
                                      .selectedGameId.value.isEmpty) {
                                    CustomSnackBar.showCustomErrorSnackBar(
                                        title: "Warning",
                                        message: 'Please Select the Game Type');
                                  } else {
                                    timerController.leftHandTapped.value = true;
                                    await timerController.checkStartTimer();
                                  }
                                },
                                onLongPressEnd: (details) {
                                  timerController.leftHandTapped.value = false;
                                  timerController.stopTimer();
                                },*/
                                    () async {
                                  if (timerGameType
                                      .selectedGameId.value.isEmpty) {
                                    CustomSnackBar.showCustomErrorSnackBar(
                                        title: "Warning",
                                        message: 'Please Select the Game Type');
                                  } else {
                                    leftTapped = true;
                                    timerController.leftHandTapped.value = true;
                                    handleTap();
                                  }
                                },
                                child: Material(
                                  color: AppColor.backGroundColor,
                                  borderRadius: BorderRadius.circular(15.0.r),
                                  elevation: 5.0,
                                  child: Container(
                                      padding: EdgeInsets.all(10.w),
                                      width: 100.w,
                                      //Get.width * 0.30,
                                      height: 210.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: AppColor.borderColor,
                                          width: 2.w,
                                        ),
                                      ),
                                      child: Obx(
                                        () => Image.asset(timerController
                                                .isRunning.value
                                            ? "assets/images/onstart_lh.png"
                                            : "assets/images/left_hand.png"),
                                      )),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Obx(
                                        () => Text(
                                          timerController.getFormattedTime(),
                                          // '${timerController.minutes.value} : ${timerController.seconds.value} : ${timerController.milliseconds.value}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.sp,
                                              color: timerController
                                                  .timerColor.value),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  gradient:
                                                      const LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                        Color(0xff141356),
                                                        Color(0xff0095DA),
                                                      ])),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    shadowColor:
                                                        Colors.transparent),
                                                onPressed: () async {
                                                  await timerController
                                                      .resetTimer();
                                                },
                                                child: Text(
                                                  'Reset',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 8.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xff141356),
                                                    Color(0xff0095DA),
                                                  ],
                                                ),
                                              ),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    shadowColor:
                                                        Colors.transparent),
                                                onPressed: () async {
                                                  await timerController
                                                      .handleSaveButtonPress();
                                                },
                                                child: Text(
                                                  'Save',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 8.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.w),
                                child: GestureDetector(
                                  onTap: /*() async {
                                    if (timerGameType
                                        .selectedGameId.value.isEmpty) {
                                      CustomSnackBar.showCustomErrorSnackBar(
                                          title: "Warning",
                                          message:
                                              'Please Select the Game Type');
                                    } else {
                                      timerController.rightHandTapped.value =
                                          true;
                                      await timerController.checkStartTimer();
                                    }
                                  },
                                  onLongPressEnd: (details) async {
                                    timerController.rightHandTapped.value =
                                        false;
                                    await timerController.stopTimer();
                                  },*/
                                      () async {
                                    if (timerGameType
                                        .selectedGameId.value.isEmpty) {
                                      CustomSnackBar.showCustomErrorSnackBar(
                                          title: "Warning",
                                          message:
                                              'Please Select the Game Type');
                                    } else {
                                      rightTapped = true;
                                      timerController.rightHandTapped.value =
                                          true;
                                      handleTap();
                                    }
                                  },
                                  child: Material(
                                    color: AppColor.backGroundColor,
                                    borderRadius: BorderRadius.circular(15.0.r),
                                    elevation: 5.0,
                                    child: Container(
                                        padding: EdgeInsets.all(10.w),
                                        width: 100.w,
                                        //Get.width * 0.30,
                                        height: 210.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: AppColor.borderColor,
                                            width: 2.w,
                                          ),
                                        ),
                                        child: Obx(
                                          () => Image.asset(timerController
                                                  .isRunning.value
                                              ? "assets/images/onstart_rh.png"
                                              : "assets/images/right_hand.png"),
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/navbar/view/navbar_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../core/utils/configs/styles/colors.dart';
import '../controller/learn_controller.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  final LearnController learnController = Get.put(LearnController());
  final Map<int, bool> _isExpanded = {};
  final Map<int, bool> _showReadMore = {};

  @override
  void initState() {
    super.initState();
    learnController.fetchLearn();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.backGroundColor,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Get.to(NavBar());
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: AppColor.txtColorMain,
              ),
            ),
            title: GradientText(
              'Learn',
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
            onRefresh: () => learnController.fetchLearn(),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: Get.width.w,
              height: Get.height.h,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: AppColor.backGroundColor,
                  height: Get.height.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0.w),
                        child: Text(
                          "Tutorial Videos",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: AppColor.blueColor,
                            fontFamily: "poppinsSemiBold",
                          ),
                        ),
                      ),
                      Obx(() {
                        if (learnController.dataList.isEmpty) {
                          return Center(
                            child: Text(
                              "No Data available",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColor.txtColorMain,
                                fontFamily: "poppinsRegular",
                              ),
                            ),
                          );
                        } else {
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 120.h),
                              child: ListView.builder(
                                itemCount: learnController.dataList.length,
                                itemBuilder: (context, index) {
                                  final data = learnController.dataList[index];
                                  final isExpanded =
                                      _isExpanded[index] ?? false;
                                  bool showReadMore =
                                      _showReadMore[index] ?? false;

                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.h,
                                      horizontal: 0.h,
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Ink(
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Color(0xffb7e4f8),
                                              Color(0XFFcbd9df),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0.0, 0.9],
                                            tileMode: TileMode.clamp,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15.0.r),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            learnController
                                                .launUrl(data.videoweb ?? '');
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "${data.tutorialWebName}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            "poppinsSemiBold",
                                                      ),
                                                    ),
                                                    Spacer(flex: 1,),
                                                    Text(
                                                      "${data.tutorialWebCreated}",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                        fontSize: 8.sp,
                                                        color: Colors.black,
                                                        fontFamily:
                                                        "poppinsMedium",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 5.h),
                                                LayoutBuilder(
                                                  builder: (context, size) {
                                                    final span = TextSpan(
                                                      text:
                                                          data.tutorialWebDetails ??
                                                              "No message",
                                                      style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black,
                                                        fontFamily:
                                                            "poppinsRegular",
                                                      ),
                                                    );

                                                    final tp = TextPainter(
                                                      text: span,
                                                      maxLines:
                                                          isExpanded ? null : 2,
                                                      textDirection:
                                                          TextDirection.ltr,
                                                    );
                                                    tp.layout(
                                                        maxWidth:
                                                            size.maxWidth);

                                                    WidgetsBinding.instance
                                                        .addPostFrameCallback(
                                                            (_) {
                                                      setState(() {
                                                        _showReadMore[index] =
                                                            tp.didExceedMaxLines;
                                                      });
                                                    });

                                                    return Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text.rich(
                                                          span,
                                                          maxLines: isExpanded
                                                              ? null
                                                              : 2,
                                                          overflow: isExpanded
                                                              ? TextOverflow
                                                                  .visible
                                                              : TextOverflow
                                                                  .ellipsis,
                                                        ),
                                                        if (showReadMore)
                                                          GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                _isExpanded[
                                                                        index] =
                                                                    !isExpanded;
                                                              });
                                                            },
                                                            child: Text(
                                                              isExpanded
                                                                  ? 'Read Less..'
                                                                  : 'Read More..',
                                                              style: TextStyle(
                                                                fontSize: 14.sp,
                                                                color: AppColor
                                                                    .blueColor,
                                                                fontFamily:
                                                                    "poppinssemibold",
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    );
                                                  },
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}

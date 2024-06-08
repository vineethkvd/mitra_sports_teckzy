import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/notification/controller/deleteNtf_controller.dart';
import 'package:mitra_sports_teckzy/feature/notification/controller/notification_controller.dart';
import 'package:mitra_sports_teckzy/feature/notification/controller/viewNtf_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/utils/configs/styles/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final NotificationController notificationController =
      Get.put(NotificationController());
  final ViewNotificationController viewNotificationController =
      Get.put(ViewNotificationController());
  final deleteNotificationController = Get.put(DeleteNotificationController());
  final Map<int, bool> _isExpanded = {};
  final Map<int, bool> _showReadMore = {};

  @override
  void initState() {
    super.initState();
    notificationController.fetchNotifications().then((_) {
      for (var notification
          in notificationController.notificationModel.value.data!) {
        viewNotificationController.markNotificationAsViewed(
            notifiId: notification.notifiId.toString());
      }
    });
    // Listen to changes in notificationModel
    notificationController.notificationModel.listen((model) {
      // Update unseen count whenever notificationModel changes
      updateUnseenCount();
    });
  }

  // Method to update the unseen count
  void updateUnseenCount() {
    int count = notificationController.notificationModel.value.data!
        .where((notification) => !notification.isSeen!)
        .length;
    notificationController.unseenCount.value = count;
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
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: AppColor.txtColorMain,
              ),
            ),
            centerTitle: true,
            title: GradientText(
              'Notifications',
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
          body: RefreshIndicator(
            onRefresh: () => notificationController.fetchNotifications(),
            child: Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              color: AppColor.backGroundColor,
              width: Get.width.w,
              height: Get.height.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    if (notificationController
                        .notificationModel.value.data!.isEmpty) {
                      return Expanded(
                        child: Center(
                          child: Text(
                            "No notifications available",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.txtColorMain,
                              fontFamily: "poppinsRegular",
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: ListView.builder(
                            itemCount: notificationController
                                .notificationModel.value.data!.length,
                            itemBuilder: (context, index) {
                              final data = notificationController
                                  .notificationModel.value.data![index];
                              List<String> dateTimeParts =
                                  data.msgSentTime!.split(" ");
                              String date = dateTimeParts[0];
                              String time = dateTimeParts[1].split(".")[0];

                              bool isExpanded = _isExpanded[index] ?? false;
                              bool showReadMore = _showReadMore[index] ?? false;

                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.h),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: AppColor.blueColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.w, vertical: 8.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: LayoutBuilder(
                                                builder: (context, size) {
                                                  final span = TextSpan(
                                                    text: data.notifiMsg ??
                                                        "No message",
                                                    style: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.white,
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
                                                      maxWidth: size.maxWidth);

                                                  // Update the _showReadMore map based on the text height
                                                  WidgetsBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) {
                                                    setState(() {
                                                      _showReadMore[index] =
                                                          tp.didExceedMaxLines;
                                                    });
                                                  });

                                                  return GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _isExpanded[index] =
                                                            !isExpanded;
                                                      });
                                                    },
                                                    child: Text.rich(
                                                      span,
                                                      maxLines:
                                                          isExpanded ? null : 2,
                                                      overflow: isExpanded
                                                          ? TextOverflow.visible
                                                          : TextOverflow
                                                              .ellipsis,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            PopupMenuButton<String>(
                                              icon: const Icon(Icons.more_vert,
                                                  color: Colors.white),
                                              onSelected: (String value) {
                                                if (value == 'delete') {
                                                  deleteNotificationController
                                                      .fetchDeleteData(
                                                          notifiId: data
                                                              .notifiId
                                                              .toString());
                                                }
                                              },
                                              itemBuilder:
                                                  (BuildContext context) {
                                                return [
                                                  PopupMenuItem(
                                                    value: 'delete',
                                                    child: Text('Delete'),
                                                    height: 30.h,
                                                  ),
                                                ];
                                              },
                                            ),
                                          ],
                                        ),
                                        if (!isExpanded &&
                                            showReadMore) // Show 'Read More' if text is truncated
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _isExpanded[index] = true;
                                              });
                                            },
                                            child: Text(
                                              'Read More',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: Colors.blue,
                                                fontFamily: "poppinssemibold",
                                              ),
                                            ),
                                          ),
                                        SizedBox(height: 4.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 120.w,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    date,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsRegular",
                                                    ),
                                                  ),
                                                  Text(
                                                    time,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          "poppinsRegular",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
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
    );
  }
}

//old code


/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mitra_sports_teckzy/feature/notification/controller/deleteNtf_controller.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../controller/notification_controller.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final NotificationController notificationController =
      NotificationController();
  final DeleteNotificationController deleteNotificationController =
      Get.put(DeleteNotificationController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationController.fetchNotifications();
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
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: AppColor.txtColorMain,
                  )),
              centerTitle: true,
              title: Text(
                "Notification",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColor.blueColor,
                    fontFamily: "poppinsBold"),
              )),
          body: Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            color: AppColor.backGroundColor,
            width: Get.width.w,
            height: Get.height.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  if (notificationController
                      .notificationModel.value.data!.isEmpty) {
                    return Expanded(
                      child: Center(
                          child: Text("No notifications available",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColor.txtColorMain,
                                  fontFamily: "poppinsRegular"))),
                    );
                  } else {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: ListView.builder(
                          itemCount: notificationController
                              .notificationModel.value.data!.length,
                          itemBuilder: (context, index) {
                            final data = notificationController
                                .notificationModel.value.data![index];
                            List<String> dateTimeParts =
                                data.msgSentTime!.split(" ");
                            String date = dateTimeParts[0];
                            String time = dateTimeParts[1].split(".")[0];
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: AppColor.brownColor,
                                ),
                                height: 72.h,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text("${data.notifiMsg}",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular")),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      SizedBox(
                                        width: 120.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Date: $date",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 11.sp,
                                                    color:
                                                        AppColor.txtColorMain,
                                                    fontFamily:
                                                        "poppinsRegular")),
                                            Text("Time: $time",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 11.sp,
                                                    color:
                                                        AppColor.txtColorMain,
                                                    fontFamily:
                                                        "poppinsRegular")),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            deleteNotificationController
                                                .fetchDeleteData(
                                                    notifiId: data.notifiId
                                                        .toString());
                                          },
                                          icon: Icon(Icons.delete))
                                    ],
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
    );
  }
}*/
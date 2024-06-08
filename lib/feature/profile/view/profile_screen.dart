import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/navbar/view/navbar_screen.dart';
import 'package:mitra_sports_teckzy/feature/profile/view/cropProfile_screen.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../drawer/view/drawer_widget.dart';
import '../controller/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController profileController = ProfileController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileController.fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    Rx<PlatformFile?> file;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: const DrawerWidget(),
          extendBodyBehindAppBar: false,
          appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    print("Back button pressed");
                    Get.to(NavBar(), transition: Transition.cupertino);
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: AppColor.txtColorMain,
                  )),
              centerTitle: true,
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColor.blueColor,
                    fontFamily: "poppinsBold"),
              )),
          body: RefreshIndicator(
            child: Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                color: AppColor.backGroundColor,
                width: Get.width.w,
                height: Get.height.h,
                child: Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.sp),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.sp),
                          child: Stack(children: [
                            Container(
                              height: 150.h,
                              width: Get.width.w,
                              color: AppColor.skyBlueColor,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Container(
                                      color: Colors.white,
                                      height: 80.h,
                                      width: 80.w,
                                      child: CachedNetworkImage(
                                        imageUrl: profileController.profileModel
                                                .value.data?.profilePic ??
                                            '',
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            const Center(
                                          child: CupertinoActivityIndicator(),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Center(
                                          child: Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Text(
                                    profileController.profileModel.value.data
                                            ?.userName ??
                                        '',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: AppColor.txtColorMain,
                                        fontFamily: "poppinsBold"),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 70.h,
                              left: 180.w,
                              child: Container(
                                height: 30.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: IconButton(
                                  onPressed: () async {
                                    FilePickerResult? result =
                                        await FilePicker.platform.pickFiles();
                                    if (result != null &&
                                        result.files.isNotEmpty) {
                                      String? filePath =
                                          result.files.first.path;
                                      if (filePath != null) {
                                        Get.to(() => CropProfileScreen(
                                              imagePath: filePath,
                                            ));
                                      }
                                    }
                                  },
                                  icon: Icon(Icons.edit),
                                  color: Colors.white,
                                  iconSize: 18.sp,
                                ),
                              ),
                            ),
                          ]),
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
                              color: Colors
                                  .black38, // This adds a blue color border
                              width: 1.0, // Adjust the border width as needed
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.sp),
                            child: Text(
                              "Student ID : ${profileController.profileModel.value.data?.userUniqId ?? ''}",
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
                              color: Colors
                                  .black38, // This adds a blue color border
                              width: 1.0, // Adjust the border width as needed
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.sp),
                            child: Text(
                              "Student School : ${profileController.profileModel.value.data?.userSchool ?? ''}",
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
                              color: Colors
                                  .black38, // This adds a blue color border
                              width: 1.0, // Adjust the border width as needed
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.sp),
                            child: Text(
                              "Coach Name : ${profileController.profileModel.value.data?.trainerName ?? ''}",
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
                              color: Colors
                                  .black38, // This adds a blue color border
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
                    ],
                  ),
                )),
            onRefresh: () => profileController.fetchProfile(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/feature/notification/controller/notifiCount_controller.dart';
import 'package:mitra_sports_teckzy/feature/notification/view/notification_screen.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../drawer/view/drawer_widget.dart';
import '../controller/navbar_controller.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final NavBarController bottomNavBarController = Get.put(NavBarController());
  final NotificationCountController notificationCountController = Get.put(NotificationCountController());

  var currentindex = 0;

  @override
  void initState() {
    super.initState();
    currentindex = bottomNavBarController.selectedIndex.value;

    // Fetch notification count on initialization
    notificationCountController.fetchNotificationsCount();

    // CacheHelper.getData("userId").then((userId) {
    //   print("Retrieved userId: $userId"); // Debugging statement
    //   // Use userId as needed
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("current index ${bottomNavBarController.selectedIndex.value}");
    return Obx(() => Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            drawer: const DrawerWidget(),
            extendBodyBehindAppBar: false,
            appBar: bottomNavBarController.selectedIndex.value ==
                0 // Show AppBar when selectedIndex value is 0
                ? AppBar(
              backgroundColor: Colors.white,
              actions: [
                Obx(() => IconButton(
                  icon: Stack(
                    children: [
                      const Icon(Icons.notifications),
                      if (notificationCountController
                          .unseenCount >
                          0)
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 7,
                            child: Text(
                              notificationCountController
                                  .unseenCount
                                  .toString(),
                              style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                    ],
                  ),
                  onPressed: () {
                    // Reset unseen notifications count when notification icon is pressed
                    // notificationCountController.unseenCount = 0;

                    Get.to(() => const NotificationScreen(),
                        transition: Transition.cupertino);
                  },
                )),
              ],
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: AppColor.txtColorMain,
                  ),
                ),
              ),
              centerTitle: true,
              title: SizedBox(
                width: 141.w,
                height: 37.h,
                child: Image.asset(
                  AssetsPathes.appBarLogo,
                ),
              ),
            )
                : null,
            body: bottomNavBarController
                .screens[bottomNavBarController.selectedIndex.value],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: AppColor.blueColor,
              unselectedItemColor: Colors.grey,
              currentIndex: bottomNavBarController.selectedIndex.value,
              onTap: (index) =>
                  bottomNavBarController.updateIndex(index: index),
              selectedLabelStyle: TextStyle(
                  fontSize: 16.sp,
                  color: AppColor.txtColorMain,
                  fontFamily: "poppinsRegular"),
              unselectedLabelStyle: TextStyle(
                  fontSize: 16.sp,
                  color: AppColor.txtColorMain,
                  fontFamily: "poppinsRegular"),
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(CupertinoIcons.home, size: 25.sp),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(CupertinoIcons.timer, size: 25.sp),
                  label: 'Practice',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.analytics_outlined, size: 25.sp),
                  label: 'Analytics',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.sports_basketball_rounded, size: 25.sp),
                  label: 'Tournament',
                ),
              ],
            )),
      ),
    ));
  }
}

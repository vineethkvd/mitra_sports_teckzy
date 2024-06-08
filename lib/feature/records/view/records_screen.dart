import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/records/view/isda_records.dart';
import 'package:mitra_sports_teckzy/feature/records/view/myRecords_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RecordsScreen extends StatefulWidget {
  const RecordsScreen({super.key});

  @override
  State<RecordsScreen> createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
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
          'Records',
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _buildListTile(
                icon: Icons.wine_bar,
                text: "Records",
                onTap: () {
                  Get.to(() => const MyRecordsScreen(),
                      transition: Transition.cupertino);
                },
              ),
              SizedBox(height: 10.h), // Add some spacing between list tiles
              _buildListTile(
                icon: Icons.wine_bar,
                text: "ISDA Records",
                onTap: () {
                  Get.to(() => const IsdaRecords(),
                      transition: Transition.cupertino);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.sp),
      child: InkWell(
        onTap: onTap, // Ensure onTap is set on InkWell
        child: Container(
          color: Colors.white,
          height: 50,
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 30.sp,
                  color: AppColor.blueColor,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColor.blueColor,
                    fontFamily: "poppinssemibold",
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: AppColor.blueColor,
              size: 30.sp,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/about/about/view/company_details_screen.dart';
import 'package:mitra_sports_teckzy/feature/about/about/view/customerCareDetails_screen.dart';
import 'package:mitra_sports_teckzy/feature/about/about/view/privacy_policy_screen.dart';
import 'package:mitra_sports_teckzy/feature/about/about/view/terms_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                Get.back();
                transition:
                Transition.cupertino;
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            title: GradientText(
              'About Us',
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
          //extendBodyBehindAppBar: true,
          body: Container(
            color: AppColor.backGroundColor,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                _buildListTile(
                  text: "Terms & Conditions",
                  onTap: () {
                    Get.to(() => const TermsScreen(),
                        transition: Transition.cupertino);
                  },
                ),
                SizedBox(height: 10.h), // Add some spacing between list tiles
                _buildListTile(
                  text: "Privacy & Policy",
                  onTap: () {
                    Get.to(() => const PrivacyPolicyScreen(),
                        transition: Transition.cupertino);
                  },
                ),
                _buildListTile(
                  text: "Customer Care Detail",
                  onTap: () {
                    Get.to(() => const CustomerCareDetailsScreen(),
                        transition: Transition.cupertino);
                  },
                ),
                _buildListTile(
                  text: "Company Details",
                  onTap: () {
                    Get.to(() => const CompanyDetailsScreen(),
                        transition: Transition.cupertino);
                  },
                ),
              ],
            ),
          ),
        )));
  }

  Widget _buildListTile({
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.sp),
      child: InkWell(
        onTap: onTap, // Ensure onTap is set on InkWell
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: AppColor.greyColor),
          color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0.sp),
                bottomRight: Radius.circular(10.0.sp),
                topLeft: Radius.circular(10.0.sp),
                topRight: Radius.circular(
                    10.0.sp) //                 <--- border radius here
            ),),
          height: 50,
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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

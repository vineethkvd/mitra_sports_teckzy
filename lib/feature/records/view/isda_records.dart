import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/navbar/view/navbar_screen.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/isda_controller/age_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/isda_controller/game_type_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/isda_controller/gender_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/isda_controller/isda_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../../core/utils/configs/styles/colors.dart';

class IsdaRecords extends StatefulWidget {
  const IsdaRecords({super.key});

  @override
  State<IsdaRecords> createState() => _IsdaRecordsState();
}

class _IsdaRecordsState extends State<IsdaRecords> {
  final GenderController _genderController = Get.put(GenderController());
  final ISDAGameTypeController _gameTypeController =
      Get.put(ISDAGameTypeController());
  final IsdaController isdaController = Get.put(IsdaController());
  final AgeController _ageController = Get.put(AgeController());

  @override
  void initState() {
    super.initState();
    _genderController.fetchGenderData();
    _gameTypeController.fetchGameType();
    _ageController.fetchAge();
    isdaController.fetchIsda();
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
              'Isda Records',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "poppinssemibold",
              ),
              colors: [
                Color(0xff141356),
                Color(0xff0095DA),
              ],
            ),
            centerTitle: true,
          ),
          body: RefreshIndicator(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0.w),
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        color: AppColor.blueColor,
                        fontSize: 18.sp,
                        fontFamily: "poppinsSemiBold",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Obx(
                            () {
                              var selectedValue =
                                  _genderController.selectedGender.value;
                              var genderList = _genderController.genderList;
                              return DropdownButtonFormField<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(13, 10, 5, 10),
                                  fillColor: AppColor.whiteColor,
                                  filled: true,
                                  hintText: 'Gender',
                                  hintStyle: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsMedium",
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: AppColor.blackTextColor,
                                        width: 1.5),
                                  ),
                                ),
                                value: genderList.any((gender) =>
                                        gender.genderName == selectedValue)
                                    ? selectedValue
                                    : null,
                                items: genderList.map((gender) {
                                  return DropdownMenuItem<String>(
                                    value: gender.genderId.toString(),
                                    child: Text(
                                      gender.genderName ?? " ",
                                      style: TextStyle(
                                          fontFamily: 'poppinsSemiBold'),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  _genderController.selectedGender.value =
                                      newValue!;
                                  isdaController.selectedGenderId.value =
                                      newValue;
                                  isdaController.fetchIsda();
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Obx(
                            () {
                              var selectedValue =
                                  _gameTypeController.selectedGametype.value;
                              var dataList = _gameTypeController.dataList;
                              return DropdownButtonFormField<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(13, 10, 13, 10),
                                  fillColor: AppColor.whiteColor,
                                  filled: true,
                                  hintText: 'GameType',
                                  hintStyle: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsMedium",
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: AppColor.blackTextColor,
                                        width: 1.5),
                                  ),
                                ),
                                value: dataList.any((gametype) =>
                                        gametype.gameTypeName == selectedValue)
                                    ? selectedValue
                                    : null,
                                items: dataList.map((gametype) {
                                  return DropdownMenuItem<String>(
                                    value: gametype.gameTypeId.toString(),
                                    child: Text(
                                      gametype.gameTypeName ?? " ",
                                      style: const TextStyle(
                                          fontFamily: 'poppinsSemiBold'),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  _gameTypeController.selectedGametype.value =
                                      newValue!;
                                  isdaController.selectedGameId.value =
                                      newValue;
                                  isdaController.fetchIsda();
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(width: 15.w),
                        Expanded(
                          child: Obx(
                            () {
                              var selectedValue =
                                  _ageController.selectedAge.value;
                              var ageList = _ageController.ageData;
                              return DropdownButtonFormField<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(13, 10, 13, 10),
                                  fillColor: AppColor.whiteColor,
                                  filled: true,
                                  hintText: 'Age',
                                  hintStyle: TextStyle(
                                    fontSize: 13.sp,
                                    color: AppColor.txtColorMain,
                                    fontFamily: "poppinsMedium",
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: AppColor.blackTextColor,
                                        width: 1.5),
                                  ),
                                ),
                                value: ageList.any((agetype) =>
                                        agetype.ageId == selectedValue)
                                    ? selectedValue
                                    : null,
                                items: ageList.map((agetype) {
                                  return DropdownMenuItem<String>(
                                    value: agetype.ageId.toString(),
                                    child: Text(
                                      "${agetype.minAge} - ${agetype.maxAge} ", // -${agetype.ageId}",
                                      style: const TextStyle(
                                          fontFamily: 'poppinsSemiBold'),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  _ageController.selectedAge.value = newValue!;
                                  isdaController.selectedAgeId.value = newValue;
                                  isdaController.fetchIsda();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Obx(() {
                    if (isdaController.dataList.isEmpty) {
                      return Padding(
                        padding: EdgeInsets.only(top: 100.h),
                        child: Center(
                          child: Text(
                            "No Data available",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.blackTextColor,
                              fontFamily: "poppinsRegular",
                            ),
                          ),
                        ),
                      );
                    } else {
                      return ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height - 200.h,
                        ),
                        child: ListView.builder(
                          itemCount: isdaController.dataList.length,
                          itemBuilder: (context, index) {
                            final data = isdaController.dataList[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.h, horizontal: 10.h),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xff005787),
                                ),
                                height: 72.h,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "${data.name}",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                color: AppColor.whiteColor,
                                                fontFamily: "poppinsSemiBold",
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 110.w,
                                            child: Text(
                                              "${data.gameTiming}",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor.whiteColor,
                                                fontFamily: "poppinsSemiBold",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "${data.gameTypeName}",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.whiteColor,
                                                fontFamily: "poppinsSemiBold",
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "${data.age}",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.whiteColor,
                                                fontFamily: "poppinsSemiBold",
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "${data.genderName}",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.whiteColor,
                                                fontFamily: "poppinsSemiBold",
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  }),
                ],
              ),
            ),
            onRefresh: () => isdaController.fetchIsda(),
          ),
        ),
      ),
    );
  }
}

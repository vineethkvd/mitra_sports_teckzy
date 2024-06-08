import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/myRecords_controller/gameType_controller.dart';
import 'package:mitra_sports_teckzy/feature/records/controller/myRecords_controller/record_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyRecordsScreen extends StatefulWidget {
  const MyRecordsScreen({super.key});

  @override
  State<MyRecordsScreen> createState() => _MyRecordsScreenState();
}

class _MyRecordsScreenState extends State<MyRecordsScreen> {
  final GameTypeController gameTypeController = Get.put(GameTypeController());
  final recordsController = Get.put(RecordsController());

  @override
  void initState() {
    super.initState();
    gameTypeController.fetchGameData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: GradientText(
            'My Records',
            style: TextStyle(
              fontSize: 20.sp,
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
          onRefresh: () => recordsController.fetchRecordsData(),
          child: SafeArea(
              child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => DropdownButtonFormField<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(13, 10, 13, 10),
                            hintText: 'Select Game Type',
                            hintStyle: TextStyle(
                              fontSize: 13.sp,
                              color: AppColor.txtColorMain,
                              fontFamily: "poppinsMedium",
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 1.5),
                            ),
                            fillColor: AppColor.whiteColor,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: AppColor.txtColorMain, width: 1.5),
                            ),
                          ),
                          value:
                              gameTypeController.selectedGame.value.isNotEmpty
                                  ? gameTypeController.selectedGame.value
                                  : null,
                          items: gameTypeController.gameList.map((game) {
                            return DropdownMenuItem<String>(
                              value: game.gameTypeId.toString(),
                              child: Text(
                                game.gameName ?? " ",
                                style: const TextStyle(
                                    fontFamily: 'poppinsSemiBold'),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            gameTypeController.selectedGame.value = newValue!;
                            recordsController.selectedGameId.value = newValue;
                            recordsController.fetchRecordsData();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Obx(() {
                    /*if (recordsController.loading.value) {
                      return const Center(child: CircularProgressIndicator());
                    } else */
                    if (recordsController.recordList.isEmpty) {
                      return Center(
                          child: Text(
                        'No records available',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColor.blackTextColor,
                          fontFamily: "poppinsRegular",
                        ),
                      ));
                    } else {
                      return ListView.builder(
                        itemCount: recordsController.recordList.length,
                        itemBuilder: (context, index) {
                          final record = recordsController.recordList[index];
                          List<String> dateTimeParts =
                              record.createdDate!.split(" ");
                          String date = dateTimeParts[0];
                          String time = dateTimeParts[1].split(".")[0];
                          return Card(
                            elevation: 3,
                            shadowColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              tileColor: Color(0xff005787),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              title: Text(
                                '#${index + 1}', // Display index + 1 as the number
                                style: TextStyle(
                                  fontSize: 20.0.sp,
                                  fontFamily: "poppinsMedium",
                                  color: AppColor.whiteColor,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Game: ${record.gameTypeName ?? ''}',
                                    style: TextStyle(
                                      fontSize: 14.0.sp,
                                      fontFamily: "poppinsMedium",
                                      color: AppColor.whiteColor,
                                    ),
                                  ),
                                  Text(
                                    'Total Time: ${record.totalTime ?? ''}',
                                    style: TextStyle(
                                      fontSize: 14.0.sp,
                                      fontFamily: "poppinsMedium",
                                      color: AppColor.whiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(date,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 11.sp,
                                          color: AppColor.whiteColor,
                                          fontFamily: "poppinsRegular")),
                                  Text(time,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 11.sp,
                                          color: AppColor.whiteColor,
                                          fontFamily: "poppinsRegular")),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  }),
                ),
              ],
            ),
          )),
        ));
  }
}

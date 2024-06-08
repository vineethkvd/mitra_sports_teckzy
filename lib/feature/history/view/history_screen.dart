import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';
import 'package:mitra_sports_teckzy/feature/history/controller/deletedHistory_controller.dart';
import 'package:mitra_sports_teckzy/feature/history/controller/history_controller.dart';
import 'package:mitra_sports_teckzy/feature/timer/view/timer_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final historyController = Get.put(HistoryController());
  final deleteHistoryController = Get.put(DeleteHistoryController());

  @override
  void initState() {
    super.initState();
    historyController.fetchHistoryData();
    _setPortraitOrientation();
  }

  void _setPortraitOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    _setPortraitOrientation();
    super.dispose();
  }

  // Delete task
  void deleteHistory(int index) {
    setState(() {
      historyController.historyList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            // Set orientation to landscape when navigating back to TimerScreen
            Get.to(const TimerScreen(), transition: Transition.cupertino);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: GradientText(
          'History',
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
        onRefresh: () => historyController.fetchHistoryData(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
                () => /*historyController
                    .historyModel.value.historyList!.isEmpty
                ? const Center(child: CircularProgressIndicator())
                :*/
                    historyController.historyList.isEmpty
                        ? Center(
                            child: Text(
                            'No history available',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.txtColorMain,
                              fontFamily: "poppinsRegular",
                            ),
                          ))
                        : ListView.builder(
                            itemCount: historyController
                                .historyModel.value.historyList!.length,
                            itemBuilder: (context, index) {
                              final history = historyController
                                  .historyModel.value.historyList![index];
                              List<String> dateTimeParts =
                                  history.createdDate!.split(" ");
                              String date = dateTimeParts[0];
                              String time = dateTimeParts[1].split(".")[0];
                              return Slidable(
                                key: ValueKey(index), // Specify a key
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  children: [
                                    SlidableAction(
                                      // An action can be bigger than the others.
                                      flex: 3,
                                      onPressed: (BuildContext context) {
                                        _deleteItem(index,
                                            history.recordId?.toString() ?? '');
                                      },
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white,
                                      icon: Icons.delete_rounded,
                                      label: 'delete',
                                      borderRadius: BorderRadius.circular(
                                          10), // Adjust the border radius
                                      spacing:
                                          8.0, // Optional: Adjust the spacing
                                    ),
                                  ],
                                ),
                                child: Card(
                                  elevation: 3,
                                  shadowColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ListTile(
                                    tileColor: Colors.grey[100],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    title: Text(
                                      'Game Type: ${history.gameType ?? ''}',
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          fontFamily: "poppinsMedium",
                                          color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      'Total Time: ${history.totalTime ?? ''}',
                                      style: TextStyle(
                                          fontSize: 14.0.sp,
                                          fontFamily: "poppinsMedium",
                                          color: Colors.black),
                                    ),
                                    trailing: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(date,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular")),
                                        Text(time,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                color: AppColor.txtColorMain,
                                                fontFamily: "poppinsRegular")),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
          ),
        ),
      ),
    );
  }

  Future<void> _deleteItem(int index, String recordId) async {
    await deleteHistoryController.fetchDeleteData(index, recordId);
    if (!deleteHistoryController.loading.value) {
      setState(() {
        historyController.historyList.removeAt(index);
        print("ind:$index");
      });
    } else {
      Get.snackbar('Error', 'Failed to delete the item');
    }
  }
}

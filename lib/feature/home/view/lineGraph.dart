import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/analytics/controller/analytics_controller.dart';
import '../../../core/utils/configs/styles/colors.dart';
import '../../history/controller/history_controller.dart';

class LineGraphWidget extends StatefulWidget {
  const LineGraphWidget({Key? key}) : super(key: key);

  @override
  State<LineGraphWidget> createState() => _LineGraphWidgetState();
}

class _LineGraphWidgetState extends State<LineGraphWidget> {
  final HistoryController historyController = Get.put(HistoryController());
  final AnalyticsController analyticsController =
  Get.put(AnalyticsController());

  @override
  void initState() {
    super.initState();
    historyController.fetchHistoryData();
    analyticsController.fetchAnalytics();
  }

  List<FlSpot> _generateSpots(String gameType) {
    final historyList = historyController.historyModel.value.historyList;
    if (historyList == null || historyList.isEmpty) return [];

    List<double> totalTimeList = [];
    for (var history in historyList) {
      if (history.gameType == gameType) {
        final List<String> timeComponents = history.totalTime!.split(':');
        final double totalTimeInSeconds = int.parse(timeComponents[0]) * 60 +
            int.parse(timeComponents[1]) +
            int.parse(timeComponents[2]) / 1000;
        totalTimeList.add(totalTimeInSeconds);
      }
    }

    totalTimeList = totalTimeList.reversed.toList();

    final List<FlSpot> spots = List.generate(
      totalTimeList.length,
          (index) => FlSpot(index.toDouble(), totalTimeList[index]),
    );

    return spots;
  }

  Map<int, String> _extractBottomTitles(String gameType) {
    final historyList = historyController.historyModel.value.historyList;
    if (historyList == null || historyList.isEmpty) return {};

    final int totalLength = historyList.fold(
      0,
          (previousValue, element) =>
      previousValue + (element.totalTime?.length ?? 0),
    );
    return {for (int i = 0; i < totalLength; i++) i: '$i'};
  }

  Map<int, String> _extractLeftTitles(List<FlSpot> spots) {
    if (spots.isEmpty) return {};

    final double minY =
    spots.map((spot) => spot.y).reduce((a, b) => a < b ? a : b);
    final double maxY =
    spots.map((spot) => spot.y).reduce((a, b) => a > b ? a : b);

    final int minYInt = (minY / 10).floor() * 10;
    final int maxYInt = (maxY / 10).ceil() * 10;

    return {for (int i = minYInt; i <= maxYInt; i += 10) i: '$i'};
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final gameTypes = analyticsController.dataList
          .map((data) => data.gameTypeName)
          .toList();

      return SizedBox(
        height: 500.sp, // Specify the height here
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          dragStartBehavior: DragStartBehavior.start,
          physics: const BouncingScrollPhysics (),
          itemCount: gameTypes.length,
          itemBuilder: (context, index) {
            final gameType = gameTypes[index];
            final spots = _generateSpots(gameType.toString());
            final bottomTitles = _extractBottomTitles(gameType.toString());
            final leftTitles = _extractLeftTitles(spots);

            // Fetch the best timing from analyticsController
            final bestTiming =
                analyticsController.dataList[index].bestRecords ?? 'N/A';
            final totalgamePlayed =
                analyticsController.dataList[index].gamesPlayed;

            return Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Graph for $gameType",
                        style: TextStyle(
                          fontFamily: "poppinsMedium",
                          color: AppColor.headingColor,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        "Best Timing: $bestTiming",
                        style: TextStyle(
                          fontFamily: "poppinsMedium",
                          color: AppColor.headingColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .9,
                          height: 250.h,
                          child: historyController.historyList
                              .isEmpty // Check if history list is empty
                              ? Center(
                            child: Text(
                              "Start practice to view your performance graph here",
                              style: TextStyle(
                                fontFamily: "poppinsMedium",
                                color: AppColor.headingColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          )
                              : LineChart(
                            LineChartData(
                              lineTouchData: const LineTouchData(
                                handleBuiltInTouches: true,
                              ),
                              gridData: const FlGridData(show: true),
                              titlesData: FlTitlesData(
                                rightTitles: const AxisTitles(
                                  sideTitles:
                                  SideTitles(showTitles: false),
                                ),
                                topTitles: AxisTitles(
                                  sideTitles:
                                  SideTitles(showTitles: false),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                    interval: 1,
                                    getTitlesWidget:
                                        (double value, TitleMeta meta) {
                                      return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: Text(
                                          bottomTitles[value.toInt()] ??
                                              '',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color:
                                            AppColor.blackTextColor,
                                            fontFamily: "poppinsRegular",
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget:
                                        (double value, TitleMeta meta) {
                                      return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: Text(
                                          leftTitles[value.toInt()] ?? '',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color:
                                            AppColor.blackTextColor,
                                            fontFamily: "poppinsRegular",
                                          ),
                                        ),
                                      );
                                    },
                                    reservedSize: 30,
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(show: true),
                              lineBarsData: [
                                LineChartBarData(
                                  isCurved: false,
                                  color: Colors.blue,
                                  barWidth: 2,
                                  belowBarData: BarAreaData(
                                    show: true,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF1632C5)
                                            .withOpacity(0.8),
                                        Color(0xff0095da)
                                            .withOpacity(0.8),
                                        Color(0xff0095da)
                                            .withOpacity(0.5),
                                        Color(0xffb7e4f8),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                  dotData: FlDotData(show: true),
                                  spots: spots,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
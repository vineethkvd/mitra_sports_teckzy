import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:get_storage/get_storage.dart';
import 'package:pie_chart/pie_chart.dart';

import '../controller/performance_controller.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  final PerformanceController performanceController = Get.put(PerformanceController());

  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a9),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
    const Color.fromARGB(185, 185, 232, 92),
    const Color.fromARGB(255, 164, 36, 4),
    const Color(0xFF141356),
    const Color(0xFF0095DA),
    const Color.fromARGB(230, 4, 224, 227),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (performanceController.performanceModel.value.data != null) {
        return Stack(
          alignment: Alignment.center,
          children: [
            PieChart(
              dataMap: performanceController.result,
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 1.4,
              colorList: colorList,
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 32,
              centerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Total Games ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "${performanceController.totalGamePlayed}",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              legendOptions: const LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.bottom,
                showLegends: true,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: true,
                showChartValuesInPercentage: false,
                showChartValuesOutside: true,
                decimalPlaces: 0,
              ),
            ),
          ],
        );
      } else {
        return const Center(
          child: Text(
            "Start practice to view your performance report here",
            style: TextStyle(fontSize: 16, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
        );
      }
    });
  }
}

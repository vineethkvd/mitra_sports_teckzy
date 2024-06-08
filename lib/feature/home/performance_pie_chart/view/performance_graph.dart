import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/core/utils/configs/styles/colors.dart';

import 'circle_pie_chart.dart';


class PerformanceGraph extends StatefulWidget {
  const PerformanceGraph({super.key});

  @override
  State<PerformanceGraph> createState() => _PerformanceGraphState();
}

class _PerformanceGraphState extends State<PerformanceGraph> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Performance Report",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.performancetxtColor,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(height: 250, child: MyPieChart()),
              ),
            ),
          ],
        )
      ],
    );
  }
}

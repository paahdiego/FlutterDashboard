import 'package:dashboardtemplate/core/core.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StorageChart extends StatelessWidget {
  StorageChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartData = [
      PieChartSectionData(
        value: 25,
        color: AppColors.pieChart1,
        showTitle: false,
        radius: 25,
      ),
      PieChartSectionData(
        value: 20,
        color: AppColors.pieChart2,
        showTitle: false,
        radius: 23,
      ),
      PieChartSectionData(
        value: 10,
        color: AppColors.pieChart3,
        showTitle: false,
        radius: 20,
      ),
      PieChartSectionData(
        value: 15,
        color: AppColors.pieChart4,
        showTitle: false,
        radius: 17,
      ),
      PieChartSectionData(
        value: 70,
        color: AppColors.pieChart1.withOpacity(0.1),
        showTitle: false,
        radius: 15,
      ),
    ];

    AppSizes sizes = AppSizes(context);
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: pieChartData,
            ),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: sizes.defaultPaddingValue,
              ),
              Text(
                "64.0",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5,
                    ),
              ),
              Text(
                "of 128GB",
              ),
            ],
          ))
        ],
      ),
    );
  }
}

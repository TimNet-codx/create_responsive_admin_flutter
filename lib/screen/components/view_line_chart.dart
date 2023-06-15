import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewLineChart extends StatelessWidget {
   ViewLineChart({Key? key}) : super(key: key);

  List<Color> gradientColors =[
   primaryColor,
   secondaryColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(appPadding, appPadding * 1.5, appPadding, appPadding),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: false
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 22,
              getTextStyles:(BuildContext context, double value) {
                return const TextStyle(
                  color: lightTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                );
              },
              getTitles: (double value){
                switch(value.toInt()){
                  case 1:
                    return 'Sun';
                  case 4:
                    return 'Mon';
                  case 7:
                    return 'Tue';
                  case 10:
                    return 'Wed';
                  case 13:
                    return 'Thur';
                  case 16:
                    return 'Fri';
                  case 19:
                    return 'Sat';
                }
                return '';
              }
            )
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 0,
          maxX: 20,
          maxY: 0,
          minY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(4, 2),
                FlSpot(9, 4),
                FlSpot(12, 3),
                FlSpot(15, 5),
                FlSpot(18, 3),
                FlSpot(20, 3)
              ],
              isCurved: true,
                colors: [primaryColor],
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors.map((e) => e.withOpacity(0.3)).toList(),
                gradientFrom: const Offset(0,0),
                gradientTo: const Offset(0,1.5)
              )
            )
          ]
        )
      ),
    );
  }
}

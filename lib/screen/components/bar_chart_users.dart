import 'package:create_responsive_admin_flutter/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarchartUsers extends StatelessWidget {
  const BarchartUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart (
      BarChartData(
        borderData:  FlBorderData(
          border: Border.all(width: 0)
        ),
        groupsSpace: 15,
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles:(BuildContext context, double value) {
              return const TextStyle(
                color: lightTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              );
            },
            margin: appPadding,
            getTitles: (double value){
              if(value == 2){
                return 'jan 6';
              }if(value == 4){
                return 'jan 8';
              }if(value == 6){
                return 'jan 10';
              }if(value == 8){
                return 'jan 11';
              }if(value == 10){
                return 'jan 12';
              }if(value == 12){
                return 'jan 13';
              }if(value == 9){
                return 'jan 15';
              }else{
                return '';
              }
            }
          ),
            leftTitles: SideTitles(
                showTitles: true,
                getTextStyles:(BuildContext context, double value) {
                  return const TextStyle(
                    color: lightTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  );
                },
                margin: appPadding,
                getTitles: (double value){
                  if(value == 2){
                    return '1k';
                  }if(value == 4){
                    return '2k';
                  }if(value == 6){
                    return '3k';
                  }if(value == 8){
                    return '4k';
                  }if(value == 10) {
                    return '5k';
                  }if(value == 14) {
                    return '6k';
                  }else{
                    return '';
                  }
                }
            )
        ),
        barGroups: [
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(
                y: 10,
                width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(
              y: 7,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(
              y: 13,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(
              y: 5,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 5, barRods: [
            BarChartRodData(
              y: 9,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 6, barRods: [
            BarChartRodData(
              y: 13,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 7, barRods: [
            BarChartRodData(
              y: 3,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
           BarChartGroupData(x: 8, barRods: [
            BarChartRodData(
              y: 7,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 9, barRods: [
            BarChartRodData(
              y: 10,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 10, barRods: [
            BarChartRodData(
              y: 6,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 11, barRods: [
            BarChartRodData(
              y: 4,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 12, barRods: [
            BarChartRodData(
              y: 12,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 13, barRods: [
            BarChartRodData(
              y: 10,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),
          BarChartGroupData(x: 14, barRods: [
            BarChartRodData(
              y: 2,
              width: 20,
              colors: [primaryColor],
              borderRadius: BorderRadius.circular(5),

            )
          ]),

          ]
      )

    );
  }
}

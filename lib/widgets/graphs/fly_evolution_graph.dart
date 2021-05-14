import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlyEvolutionGraph extends StatelessWidget {
  final double b0;
  final double b1;
  final double b2;
  final double b3;
  final double b4;
  final String title;

  FlyEvolutionGraph({
    Key? key,
    required this.b0,
    required this.b1,
    required this.b2,
    required this.b3,
    required this.b4,
    this.title = 'FLY EVOLUTION',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 241,
          height: 241,
          child: LineChart(mainData(context, b0, b1, b2, b3, b4)),
        ),
        SizedBox(height: 90),
        Text(title),
      ],
    );
  }
}

LineChartData mainData(
  BuildContext context,
  double b0,
  double b1,
  double b2,
  double b3,
  double b4,
) {
  final theme = Theme.of(context);
  final primaryColor = theme.primaryColor;
  final labelStyle = theme.textTheme.caption;
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(color: primaryColor, strokeWidth: 0.5);
      },
      getDrawingVerticalLine: (value) {
        double strokeWidth = 0.5;
        if (value == 4 || value == 8 || value == 13) {
          strokeWidth = 2;
        }
        return FlLine(
          color: primaryColor,
          strokeWidth: strokeWidth,
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        getTextStyles: (value) => labelStyle!,
        getTitles: (value) {
          switch (value.toInt()) {
            case 4:
              return 'B1';
            case 8:
              return 'B2';
            case 13:
              return 'B3';
          }
          return '';
        },
        margin: 8,
      ),
      leftTitles: SideTitles(
        showTitles: true,
        getTextStyles: (value) {
          if (value == 0 || value == 100) {
            return labelStyle!.copyWith(color: primaryColor, fontSize: 10);
          }
          return labelStyle!.copyWith(
            color: Colors.transparent,
            fontSize: 10,
          );
        },
      ),
    ),
    borderData: FlBorderData(
      border: Border.all(color: primaryColor, width: 0.5),
    ),
    minX: 0,
    maxX: 15,
    minY: 0,
    maxY: 100,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, b0 * 100),
          FlSpot(4, b1 * 100),
          FlSpot(8, b2 * 100),
          FlSpot(13, b3 * 100),
          FlSpot(15, b4 * 100),
        ],
        isCurved: true,
        colors: [Colors.white],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
      ),
    ],
  );
}

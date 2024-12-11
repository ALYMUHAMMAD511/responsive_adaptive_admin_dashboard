import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design Service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          value: 40,
          titleStyle: Styles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          radius: activeIndex == 0 ? 55 : 45,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design Product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 2.3 : null,
          value: 25,
          titleStyle: Styles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          radius: activeIndex == 1 ? 55 : 45,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Design Royalty' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          value: 20,
          titleStyle: Styles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          radius: activeIndex == 2 ? 55 : 45,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Other' : '22%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          value: 22,
          titleStyle: Styles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          radius: activeIndex == 3 ? 55 : 45,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
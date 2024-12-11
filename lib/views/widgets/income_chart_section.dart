import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/size_config.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/detailed_income_chart.dart';

import 'income_chart.dart';
import 'income_chart_details.dart';

class IncomeChartSection extends StatelessWidget {
  const IncomeChartSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1492
        ? const Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ),
        )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}

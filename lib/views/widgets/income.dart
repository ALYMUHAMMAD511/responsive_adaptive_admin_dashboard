import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/income_chart_section.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              IncomeHeader(),
              SizedBox(
                height: 16,
              ),
              IncomeChartSection(),
            ],
          ),
        ),
    );
  }
}

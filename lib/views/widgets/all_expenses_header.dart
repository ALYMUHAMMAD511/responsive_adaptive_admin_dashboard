import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const CustomRangeOptions(),
      ],
    );
  }
}

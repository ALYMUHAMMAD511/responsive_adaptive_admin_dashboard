import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        const CustomRangeOptions(),
      ],
    );
  }
}

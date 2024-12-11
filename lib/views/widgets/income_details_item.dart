import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/income_chart_item_model.dart';

import '../../utils/styles.dart';

class IncomeChartDetailsItem extends StatelessWidget {
  const IncomeChartDetailsItem({
    super.key,
    required this.incomeChartItemModel,
  });

  final IncomeChartItemModel incomeChartItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeChartItemModel.color,
        ),
      ),
      title: Text(
        incomeChartItemModel.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        incomeChartItemModel.percentage,
        style: Styles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}

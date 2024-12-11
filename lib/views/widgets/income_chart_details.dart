import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/income_chart_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeChartItemModel> items = [
    IncomeChartItemModel(
      color: Color(0xFF208CC8),
      title: 'Design Service',
      percentage: '40%',
    ),
    IncomeChartItemModel(
      color: Color(0xFF4EB7F2),
      title: 'Design Product',
      percentage: '25%',
    ),
    IncomeChartItemModel(
      color: Color(0xFF064061),
      title: 'Product Royalty',
      percentage: '20%',
    ),
    IncomeChartItemModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      percentage: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
              ),
              child: IncomeChartDetailsItem(
                incomeChartItemModel: e,
              ),
            ),
          )
          .toList(),
    );
  }
}

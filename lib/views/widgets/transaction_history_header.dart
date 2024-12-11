import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: Styles.styleMedium16(context).copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}

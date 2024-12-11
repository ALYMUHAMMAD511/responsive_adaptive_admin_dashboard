import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/my_card.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Padding(
          padding: EdgeInsets.all(24),
            child: Column(
              children: [
                MyCard(),
                Divider(
                  height: 40,
                  color: Color(0xFFF1F1F1),
                ),
                TransactionHistory(),
              ],
            ),
          ),
    );
  }
}

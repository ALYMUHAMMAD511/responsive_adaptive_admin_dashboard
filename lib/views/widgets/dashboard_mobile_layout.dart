import 'package:flutter/material.dart';
import 'all_expenses_and_quick_invoice_section.dart';
import 'income.dart';
import 'my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            AllExpensesAndQuickInvoiceSection(),
            SizedBox(height: 24),
            MyCardAndTransactionHistorySection(),
            SizedBox(height: 24),
            Income(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

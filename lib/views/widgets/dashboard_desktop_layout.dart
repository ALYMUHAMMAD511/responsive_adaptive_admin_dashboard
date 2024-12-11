import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/income.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Drawer Section
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        // Left Content Section
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          bottom: 32,
                        ),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    // Right Content Section
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardAndTransactionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(child: Income()),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

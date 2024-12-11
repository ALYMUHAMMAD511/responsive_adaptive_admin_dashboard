import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/latest_transaction_section.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransactionSection(),
          Divider(
            height: 48,
            indent: 24,
            endIndent: 24,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

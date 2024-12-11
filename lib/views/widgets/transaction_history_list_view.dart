import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/transaction_model.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdrawal: false,
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
              child: TransactionItem(
                transactionModel: e,
              ),
            ),
          )
          .toList(),
    );
  }
}

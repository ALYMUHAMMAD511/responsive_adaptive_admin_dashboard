import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/transaction_model.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            transactionModel.title,
            style: Styles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            transactionModel.date,
            style: Styles.styleRegular16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
        ),
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            transactionModel.amount,
            style: Styles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7DD97B),
            ),
          ),
        ),
      ),
    );
  }
}

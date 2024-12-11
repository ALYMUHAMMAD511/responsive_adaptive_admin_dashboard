import 'package:flutter/material.dart';

import '../../models/all_expenses_item_model.dart';
import '../../utils/styles.dart';
import 'all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFF4EB7F2),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            imageColor: const Color(0xFFFFFFFF),
            imageBackgroundColor: Colors.white.withOpacity(0.1),
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: Styles.styleSemiBold16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: Styles.styleRegular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: Styles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        IconButton(
          onPressed: (){},
          icon: Container(
            height: 48,
            width: 48,
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xFFFAFAFA),
            ),
            child: const Icon(
              Icons.add,
              color: Color(0xFF4EB7F2),
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}

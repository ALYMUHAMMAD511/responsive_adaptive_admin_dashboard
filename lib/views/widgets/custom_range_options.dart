import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';

class CustomRangeOptions extends StatelessWidget {
  const CustomRangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: Styles.styleMedium16(context),
            ),
            const SizedBox(
              width: 18,
            ),
            IconButton(
              onPressed: () {},
              icon: Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF064061),
                  size: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

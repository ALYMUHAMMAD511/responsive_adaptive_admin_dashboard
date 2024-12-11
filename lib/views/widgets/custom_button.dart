import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.textColor,
  });

  final String text;
  final Color backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: Styles.styleSemiBold18(context).copyWith(
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

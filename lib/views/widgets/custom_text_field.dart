import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          color: const Color(0xFF4EB7F2),
        ),
        hintText: hint,
        hintStyle: Styles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        contentPadding: const EdgeInsets.all(20),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? const Color(0xFFFAFAFA),
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}

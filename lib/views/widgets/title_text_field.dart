import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_text_field.dart';

import '../../utils/styles.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hint,
  });

  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}

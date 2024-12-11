import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/card_details.dart';

import '../../generated/assets.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF4EB7F2),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCard),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const CardDetails(),
      ),
    );
  }
}

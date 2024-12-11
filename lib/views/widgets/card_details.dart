import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../../utils/styles.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 31,
            right: 45,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Name Card',
              style: Styles.styleRegular16(context).copyWith(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Syah Bandi',
              style: Styles.styleMedium20(context),
            ),
            trailing: SvgPicture.asset(Assets.imagesCardGallery),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: Styles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '12/20 - 124',
                style: Styles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Flexible(
          child: SizedBox(
            height: 27,
          ),
        ),
      ],
    );
  }
}

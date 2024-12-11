import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/user_info_model.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/assets.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.avatar_1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.avatar_2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.avatar_3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.asMap().entries.map(
          (e) {
            int index = e.key;
            var item = e.value;
            return Padding(
              padding: index == 1
                  ? const EdgeInsets.symmetric(
                      horizontal: 12,
                    )
                  : EdgeInsets.zero,
              child: IntrinsicWidth(
                child: UserInfoListTile(
                  userInfoModel: item,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

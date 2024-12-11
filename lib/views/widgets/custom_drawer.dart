import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard/models/user_info_model.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/inactive_drawer_item.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/user_info_list_tile.dart';
import '../../utils/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(
          left: 28,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 20,
                  top: 40,
                ),
                child: UserInfoListTile(
                  userInfoModel: UserInfoModel(
                    image: Assets.avatar_4,
                    title: 'Lekan Okeowo',
                    subtitle: 'demo@gmail.com',
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 28,
              ),
            ),
            DrawerItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      icon: Assets.settings,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      icon: Assets.logout,
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

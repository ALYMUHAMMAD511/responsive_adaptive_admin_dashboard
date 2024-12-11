import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/drawer_item.dart';
import '../../models/drawer_item_model.dart';
import '../../utils/assets.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeItemIndex = 0;

  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      title: 'Dashboard',
      icon: Assets.dashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      icon: Assets.transaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      icon: Assets.statistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      icon: Assets.wallet,
    ),
    DrawerItemModel(
      title: 'My Investments',
      icon: Assets.investments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeItemIndex != index) {
            setState(() {
              activeItemIndex = index;
            });
          }
        },
        child: DrawerItem(
          drawerItemModel: drawerItems[index],
          isActive: activeItemIndex == index,
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: drawerItems.length,
    );
  }
}

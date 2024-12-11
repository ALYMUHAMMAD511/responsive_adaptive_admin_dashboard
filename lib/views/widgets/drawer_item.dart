import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/active_drawer_item.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_admin_dashboard/models/drawer_item_model.dart';
import '../../utils/styles.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: Styles.styleRegular16(context),
        ),
      ),
    );
  }
}

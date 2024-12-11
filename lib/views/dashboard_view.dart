import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/utils/size_config.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_admin_dashboard/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: SizeConfig.width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF4EB7F2),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    const ResponsiveAdaptiveAdminDashboard(),
  );
}

class ResponsiveAdaptiveAdminDashboard extends StatelessWidget {
  const ResponsiveAdaptiveAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}

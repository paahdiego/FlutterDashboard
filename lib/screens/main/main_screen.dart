import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/dashboard.dart';

import 'package:dashboardtemplate/screens/main/widgets/side_menu/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 3,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}

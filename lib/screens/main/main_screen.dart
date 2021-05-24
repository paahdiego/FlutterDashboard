import 'package:dashboardtemplate/controllers/MenuController.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/dashboard.dart';
import 'package:dashboardtemplate/screens/main/widgets/side_menu/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Provider.of<MenuController>(context).scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}

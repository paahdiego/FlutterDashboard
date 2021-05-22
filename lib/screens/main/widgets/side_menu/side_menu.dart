import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/main/widgets/drawer_list_tile/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(AppImages.logo),
            ),
            DrawerListTile(
              title: "Dashboard",
              icon: AppIcons.menuDashboard,
              onTap: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              icon: AppIcons.menuTran,
              onTap: () {
                print("something");
              },
            ),
            DrawerListTile(
              title: "Task",
              icon: AppIcons.menuTask,
              onTap: () {},
            ),
            DrawerListTile(
              title: "Documents",
              icon: AppIcons.menuDoc,
              onTap: () {},
            ),
            DrawerListTile(
              title: "Store",
              icon: AppIcons.menuStore,
              onTap: () {},
            ),
            DrawerListTile(
              title: "Notification",
              icon: AppIcons.menuNotification,
              onTap: () {},
            ),
            DrawerListTile(
              title: "Profile",
              icon: AppIcons.menuProfile,
              onTap: () {},
            ),
            DrawerListTile(
              title: "Settings",
              icon: AppIcons.menuSetting,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

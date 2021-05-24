import 'package:dashboardtemplate/controllers/MenuController.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/profile_card/profile_card.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Provider.of<MenuController>(context, listen: false).controlMenu();
            },
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Container(
      margin: EdgeInsets.only(left: sizes.defaultPaddingValue),
      padding: EdgeInsets.symmetric(
        horizontal: sizes.defaultPaddingValue,
        vertical: sizes.defaultPaddingValue / 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: AppColors.white.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Image.asset(
            AppImages.profilePic,
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sizes.defaultPaddingValue / 2,
              ),
              child: Text("Angelina Jolie"),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

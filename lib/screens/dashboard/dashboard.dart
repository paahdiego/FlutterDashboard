import 'package:dashboardtemplate/core/app_sizes.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/profile_card/profile_card.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);

    return SingleChildScrollView(
      padding: sizes.defaultPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.headline6,
              ),
              Spacer(),
              Expanded(child: SearchField()),
              ProfileCard(),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:dashboardtemplate/screens/dashboard/widgets/profile_card/profile_card.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/search_field/search_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}

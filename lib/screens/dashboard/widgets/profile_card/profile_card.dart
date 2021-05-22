import 'package:dashboardtemplate/core/core.dart';
import 'package:flutter/material.dart';

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

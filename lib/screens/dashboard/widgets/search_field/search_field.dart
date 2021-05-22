import 'package:dashboardtemplate/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.secondaryColor,
        filled: true,
        hintText: "Search",
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            margin:
                EdgeInsets.symmetric(horizontal: sizes.defaultPaddingValue / 2),
            padding: EdgeInsets.all(sizes.defaultPaddingValue * 0.75),
            decoration: BoxDecoration(color: AppColors.primaryColor),
            child: SvgPicture.asset(AppIcons.search),
          ),
        ),
      ),
    );
  }
}

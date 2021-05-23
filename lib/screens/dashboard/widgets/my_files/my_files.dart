import 'package:dashboardtemplate/core/core.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Add"),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: sizes.defaultPaddingValue * 1.5,
              vertical: sizes.defaultPaddingValue,
            ),
          ),
        )
      ],
    );
  }
}

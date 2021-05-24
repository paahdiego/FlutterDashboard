import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/models/MyFiles.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/file_info_card/file_info_card.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Column(
      children: [
        Row(
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
        ),
        SizedBox(
          height: sizes.defaultPaddingValue,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: sizes.defaultPaddingValue,
              childAspectRatio: 1.4),
          itemBuilder: (context, index) {
            return FileInfoCard(info: demoMyFiles[index]);
          },
        )
      ],
    );
  }
}

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
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: sizes.displayWidth < 650 ? 2 : 4,
            aspectRatio: sizes.displayWidth < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            aspectRatio: sizes.displayWidth < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.aspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: sizes.defaultPaddingValue,
          mainAxisSpacing: sizes.defaultPaddingValue,
          childAspectRatio: aspectRatio),
      itemBuilder: (context, index) {
        return FileInfoCard(info: demoMyFiles[index]);
      },
    );
  }
}

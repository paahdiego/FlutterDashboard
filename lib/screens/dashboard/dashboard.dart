import 'package:dashboardtemplate/core/app_sizes.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/models/MyFiles.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/file_info_card/file_info_card.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/header/header.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/my_files/my_files.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_details/storage_details.dart';

import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return SingleChildScrollView(
      padding: sizes.defaultPadding,
      child: Column(
        children: [
          Header(),
          SizedBox(height: sizes.defaultPaddingValue),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(height: sizes.defaultPaddingValue),
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
                ),
              ),
              SizedBox(width: sizes.defaultPaddingValue),
              Expanded(
                flex: 2,
                child: StorageDetails(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

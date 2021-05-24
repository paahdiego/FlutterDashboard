import 'package:dashboardtemplate/core/app_sizes.dart';
import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/header/header.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/my_files/my_files.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/recent_files/recent_files.dart';
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
                    RecentFiles(),
                    if (Responsive.isMobile(context))
                      SizedBox(height: sizes.defaultPaddingValue),
                    if (Responsive.isMobile(context)) StorageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                SizedBox(width: sizes.defaultPaddingValue),
              if (!Responsive.isMobile(context))
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

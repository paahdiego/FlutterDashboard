import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_chart/storage_chart.dart';
import 'package:dashboardtemplate/screens/dashboard/widgets/storage_info_card/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Container(
      padding: sizes.defaultPadding,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: sizes.defaultBorderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: sizes.defaultPaddingValue),
          StorageChart(),
          StorageInfoCard(
            title: "Documents Files",
            icon: AppIcons.documents,
            numberOfFiles: 7543,
            amountOfFiles: "22.85GB",
          ),
          StorageInfoCard(
            title: "Media Files",
            icon: AppIcons.media,
            numberOfFiles: 520,
            amountOfFiles: "18.29GB",
          ),
          StorageInfoCard(
            title: "Other Files",
            icon: AppIcons.folder,
            numberOfFiles: 2043,
            amountOfFiles: "9.14GB",
          ),
          StorageInfoCard(
            title: "Unknown",
            icon: AppIcons.unknown,
            numberOfFiles: 1327,
            amountOfFiles: "13.72GB",
          ),
        ],
      ),
    );
  }
}

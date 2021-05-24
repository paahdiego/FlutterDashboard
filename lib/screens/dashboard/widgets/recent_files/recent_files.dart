import 'package:dashboardtemplate/core/core.dart';
import 'package:dashboardtemplate/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
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
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: sizes.defaultPaddingValue,
                horizontalMargin: 0,
                columns: [
                  DataColumn(label: Text("Filename")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Size")),
                ],
                rows: [
                  ...List.generate(
                    demoRecentFiles.length,
                    (index) => recentDataRow(context, demoRecentFiles[index]),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  DataRow recentDataRow(BuildContext context, RecentFile file) {
    AppSizes sizes = AppSizes(context);
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              SvgPicture.asset(
                file.icon,
                width: 30,
                height: 30,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: sizes.defaultPaddingValue),
                child: Text(file.title),
              ),
            ],
          ),
        ),
        DataCell(
          Text(file.date),
        ),
        DataCell(
          Text(file.size),
        ),
      ],
    );
  }
}

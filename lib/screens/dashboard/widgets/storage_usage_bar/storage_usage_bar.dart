import 'package:dashboardtemplate/core/core.dart';
import 'package:flutter/material.dart';

class StorageUsageBar extends StatelessWidget {
  const StorageUsageBar({
    Key? key,
    required this.color,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: sizes.defaultBorderRadius,
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: sizes.defaultBorderRadius,
            ),
          );
        })
      ],
    );
  }
}

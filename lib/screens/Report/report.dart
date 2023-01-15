import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // AppNavigator.navigateTo(settingsPage);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    size: 18.sp,
                  ),
                  Gap(8.w),
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            Gap(16.h),
            GestureDetector(
              onTap: () {
                AppNavigator.navigateTo(reportPage);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.book_outlined,
                    size: 18.sp,
                  ),
                  Gap(8.w),
                  Text(
                    'Report',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

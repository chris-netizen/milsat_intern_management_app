import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/reusable_botton.dart';
import 'package:milsat_management_app/files.dart';

class InternCard extends StatelessWidget {
  const InternCard({
    super.key,
    required this.internImage,
    required this.internName,
    required this.internRole,
  });
  final String internImage;
  final String internName;
  final String internRole;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      margin: const EdgeInsets.all(8),
      width: 160.w,
      color: AppTheme.mainAppTheme,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Gap(15.h),
              Image.asset(
                internImage,
                width: 70.h,
              ),
              Gap(10.h),
              Text(
                internName,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 16.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                internRole,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 16.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(25.h),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  AppNavigator.navigateTo(internProfile);
                },
                child: ReusableButton(
                  color: AppTheme.deepPurpleColor,
                  text: 'View Profile',
                  width: 65.w,
                  color2: AppTheme.mainAppTheme,
                ),
              ),
              ReusableButton(
                color: AppTheme.mainAppTheme,
                text: 'Message',
                width: 65.w,
                color2: Colors.black54,
                border: Border.all(color: Colors.black12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

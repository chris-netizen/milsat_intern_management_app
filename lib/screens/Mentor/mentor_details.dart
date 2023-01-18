import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

import '../../extras/reusable_botton.dart';

class MentorDetails extends StatelessWidget {
  const MentorDetails({
    super.key,
    required this.name,
    required this.title,
  });
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200.h,
      width: 200.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Gap(15.h),
              Image.asset(
                'assets/woman_picture.png',
                width: 100.h,
              ),
              Gap(15.h),
              Text(
                name,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 20.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 18.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(40.h),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  AppNavigator.navigateTo(mentorProfile);
                },
                child: const ReusableButton(
                  color: AppTheme.deepPurpleColor,
                  text: 'View Profile',
                  // width: 65.w,
                  color2: AppTheme.mainAppTheme,
                ),
              ),
              ReusableButton(
                color: AppTheme.mainAppTheme,
                text: 'Message',
                // width: 65.w,
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

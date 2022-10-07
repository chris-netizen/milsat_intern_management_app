import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatarMock(
          radius: 27.r,
          imageString: 'assets/person.png',
        ),
        Gap(16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kristin Watson',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.mainAppTheme),
            ),
            Gap(2.h),
            Text(
              'felicia.reid@example.com',
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.mainAppTheme),
            ),
            Gap(16.h),
            Text(
              'INTERN',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppTheme.mainAppTheme,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

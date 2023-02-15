import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/header.dart';
import 'package:google_fonts/google_fonts.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    // AppNavigator.navigateTo(settingsPage);
                  },
                  child: Row(
                    children: [
                      CircleAvatarMock(
                        radius: 20.r,
                        imageString: 'assets/person.png',
                      ),
                      Gap(12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'chris',
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                            ),
                          ),
                          Text(
                            'mobile developer',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              const Divider(
                color: AppTheme.greyColor,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
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
                          Gap(16.w),
                          Text(
                            'Report',
                            style: GoogleFonts.raleway(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
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
                            Icons.person_outlined,
                            size: 18.sp,
                          ),
                          Gap(16.w),
                          Text(
                            'View profile',
                            style: GoogleFonts.raleway(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
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
                            Icons.logout_rounded,
                            size: 18.sp,
                          ),
                          Gap(16.w),
                          Text(
                            'Sign Out',
                            style: GoogleFonts.raleway(
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
            ],
          ),
        ],
      ),
    );
  }
}

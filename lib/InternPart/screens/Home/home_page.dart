import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 24.h,
              ),
              child: Column(
                children: [
                  const InternInfoBox(),
                  Gap(24.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 14.h,
                    ),
                    // height: 74.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.mobileAlertColor),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: AppTheme.deepestPurpleColor,
                          size: 13.33.sp,
                        ),
                        Gap(9.33.w),
                        Text(
                          'Milsat internship project starts (Aug \n28, 2004)',
                          style: GoogleFonts.raleway(
                            color: const Color(0xFF4E2251),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(64.h),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(
                            'It\'s a great day at Milsat',
                            style: GoogleFonts.raleway(
                              color: AppTheme.greyTextColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Gap(16.h),
                          Text(
                            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.'
                            'Velit officia consequat duis enim velit mollit.'
                            'Exercitation veniam consequat sunt nostrud amet.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.raleway(
                              color: const Color(0xFF79717A),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
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

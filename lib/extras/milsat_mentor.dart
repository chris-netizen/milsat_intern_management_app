import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/extras/constants.dart';

class MilsatMentor extends StatelessWidget {
  const MilsatMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppTheme.deepPurpleColor,
          height: 100.h,
          child: Center(
            child: Text(
              'Assigned Mentor',
              style: GoogleFonts.raleway(
                color: const Color(0xFFFFFFFF),
                fontSize: 25.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Positioned(
          right: 290.w,
          child: Image.asset(
            'assets/Mentor1.png',
            // color: const Color(0xFFE9EBF8),
            height: 100.h,
            width: 100,
          ),
        ),
        Positioned(
          left: 90.w,
          child: Image.asset(
            'assets/mentor2.png',
            // color: const Color(0xFFE9EBF8),
            height: 80.h,
            width: 200.w,
          ),
        ),
        Positioned(
          left: 320.w,
          child: Image.asset(
            'assets/mentor3.png',
            // color: const Color(0xFFE9EBF8),
            height: 100.h,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:milsat_management_app/extras/constants.dart';

class MilsatIntern extends StatelessWidget {
  const MilsatIntern({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppTheme.deepPurpleColor,
          height: 100.h,
          child: Center(
            child: Text(
              'Milsat Intern',
              style: internBoldTextStyle,
            ),
          ),
        ),
        Positioned(
          child: Image.asset(
            'assets/interndesign1.png',
            // color: const Color(0xFFE9EBF8),
            height: 30.h,
          ),
        ),
        Positioned(
          left: 110.w,
          top: 78.h,
          child: Image.asset(
            'assets/inernmiddle.png',
            // color: const Color(0xFFE9EBF8),
            height: 30.h,
            width: 150.w,
          ),
        ),
        Positioned(
          left: 350.w,
          top: 50.h,
          child: Image.asset(
            'assets/internlast.png',
            // color: const Color(0xFFE9EBF8),
            height: 50.h,
          ),
        ),
      ],
    );
  }
}

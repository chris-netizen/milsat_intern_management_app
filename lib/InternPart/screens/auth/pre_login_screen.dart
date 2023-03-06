import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../files.dart';

class PreLogin extends StatelessWidget {
  const PreLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Gap(187.h),
          SizedBox(
            height: 40.h,
            width: 157.09.w,
            child: Image.asset(
              'assets/app_logo.png',
            ),
          ),
          Gap(61.h),
          Text(
            'Welcome to \nMilsat Internship',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
                fontSize: 31.sp, fontWeight: FontWeight.w600),
          ),
          Gap(300.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: Size(double.infinity, 50.h),
              ),
              onPressed: () {
                AppNavigator.navigateTo(logInRoute);
              },
              child: Text(
                'Get Started',
                style: GoogleFonts.raleway(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../extras/files.dart';

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
            style: TextStyle(
                fontFamily: 'RaleWay',
                fontSize: 31.sp,
                fontWeight: FontWeight.w600),
          ),
          Gap(184.h),
          Text(
            'Login to get started',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppTheme.smallTextColor,
            ),
          ),
          const Gap(35),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

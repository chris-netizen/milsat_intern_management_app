import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class PasswordResetConfirmation extends StatelessWidget {
  const PasswordResetConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/password_resetImage.png',
              height: 120.h,
              width: 120.w,
            ),
            Gap(48.h),
            Text(
              'Password reset',
              style: veryBoldTextStyle,
            ),
            Gap(48.h),
            WideAppButton(
              text: 'Login',
              pressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

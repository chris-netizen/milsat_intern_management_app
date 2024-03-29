import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class ResetPasswordPage extends StatelessWidget {
  final String email;
  const ResetPasswordPage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: Center(
          child: Column(
            children: [
              Gap(90.h),
              Image.asset(
                'assets/email_image.png',
                height: 146.h,
                width: 234.w,
              ),
              Gap(32.h),
              Text(
                'Check your mail box',
                style: veryBoldTextStyle,
              ),
              Gap(48.h),
              Text(
                'A reset link has been sent to your mail',
                style: appTextStyle,
              ),
              Text(
                email,
                style: coloredTextStyle2,
              ),
              Gap(48.h),
              Text(
                'Didn\'t receive a mail?',
                style: appTextStyle,
              ),
              Gap(10.h),
              const ReturnToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}

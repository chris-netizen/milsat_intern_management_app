import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30.h),
            Center(
              child: Text(
                'A reset link will be sent to your mail\n with instructions',
                textAlign: TextAlign.center,
                softWrap: true,
                style: appTextStyle,
              ),
            ),
            Gap(48.h),
            Text(
              'Email',
              style: appTextStyle,
            ),
            Gap(8.h),
            const AppTextField(
              text: 'Email address',
              obscureText: false,
            ),
            Gap(32.h),
            const WideAppButton(
              text: 'Reset Password',
            ),
            Gap(32.h),
            const ReturnToLogin(),
          ],
        ),
      ),
    );
  }
}

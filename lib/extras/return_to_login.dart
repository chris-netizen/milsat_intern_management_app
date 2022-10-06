import 'package:flutter/material.dart';

import '../files.dart';

class ReturnToLogin extends StatelessWidget {
  const ReturnToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Return to',
          style: smallAppTextStyle,
        ),
        Gap(4.w),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              (MaterialPageRoute(
                builder: ((context) => const LoginPage()),
              )),
            );
          },
          child: Text(
            'LogIn',
            style: coloredTextStyle,
          ),
        ),
      ],
    );
  }
}

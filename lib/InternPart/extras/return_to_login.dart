import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../files.dart';

class ReturnToLogin extends StatelessWidget {
  const ReturnToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Return to',
          style: GoogleFonts.raleway(
            fontSize: 15.sp,
          ),
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
            style: GoogleFonts.raleway(
              fontSize: 15.sp,
              color: const Color(0xFF5A275D),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

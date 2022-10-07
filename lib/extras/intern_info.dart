import 'package:flutter/material.dart';

import '../files.dart';

class InternInfoBox extends StatelessWidget {
  const InternInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 134.h,
          width: 327.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.87.r),
            color: const Color(0xFFCBADCD),
          ),
        ),
        Positioned(
          top: -25.h,
          left: -63.w,
          child: Container(
            height: 261.h,
            width: 261.w,
            decoration: const BoxDecoration(
              color: AppTheme.deepPurpleColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: -100.h,
          left: 193.w,
          child: Container(
            height: 138.52.h,
            width: 138.52.w,
            decoration: const BoxDecoration(
              color: AppTheme.deepPurpleColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 49.h,
          left: 246.w,
          child: Container(
            height: 138.52.h,
            width: 138.52.w,
            decoration: const BoxDecoration(
              color: AppTheme.deepPurpleColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: 16.w,
          top: 24.h,
          child: const ProfileHeader(),
        )
      ],
    );
  }
}

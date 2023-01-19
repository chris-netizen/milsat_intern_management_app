import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/reusable_botton.dart';
import 'package:milsat_management_app/files.dart';

import '../profile/intern_profile.dart';

const List<String> list = <String>[
  'All Department',
  'UI/UX',
  'Web Dev.',
  'Mobile Dev.',
  'Community Dev.',
  'Backend Dev.'
];

class InternCard extends StatelessWidget {
  const InternCard({
    super.key,
    required this.internImage,
    required this.internName,
    required this.internRole,
  });
  final String internImage;
  final String internName;
  final String internRole;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      margin: const EdgeInsets.all(8),
      color: AppTheme.mainAppTheme,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Gap(10.h),
              Image.asset(
                internImage,
                width: 65.h,
              ),
              Gap(7.h),
              Text(
                internName,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 14.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                internRole,
                style: TextStyle(
                  color: const Color(0xFF000000),
                  fontSize: 13.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(20.h),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InternProfile(
                      internEmail: 'x@gmail.com',
                      internName: internName,
                      internTitle: internRole,
                    );
                  }));
                },
                child: const ReusableButton(
                  color: AppTheme.deepPurpleColor,
                  text: 'View Profile',
                  color2: AppTheme.mainAppTheme,
                ),
              ),
              ReusableButton(
                color: AppTheme.mainAppTheme,
                text: 'Message',
                color2: Colors.black54,
                border: Border.all(color: Colors.black12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

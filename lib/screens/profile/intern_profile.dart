import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class InternProfile extends StatelessWidget {
  const InternProfile({
    super.key,
    required this.internName,
    required this.internEmail,
    required this.internTitle,
  });

  final String internName;
  final String internEmail;
  final String internTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: _internProfile(internName, internEmail, internTitle),
            ),
          ),
          Gap(32.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bio',
                  style: profileTextHeader,
                ),
                Gap(5.h),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2EBF3),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: const Color(0xFFCBADCD),
                    ),
                  ),
                  child: Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.'
                    '  Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
                    style: profileTextFont,
                  ),
                ),
                Gap(24.h),
                Text(
                  'Institution',
                  style: profileTextHeader,
                ),
                Gap(5.h),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2EBF3),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: const Color(0xFFCBADCD),
                    ),
                  ),
                  child: Text(
                    'Federal University of Technology,Akure',
                    style: profileTextFont,
                  ),
                ),
                Gap(24.h),
                Text(
                  'Course of Study',
                  style: profileTextHeader,
                ),
                Gap(5.h),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2EBF3),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: const Color(0xFFCBADCD),
                    ),
                  ),
                  child: Text(
                    'Remote Sensing and GIS',
                    style: profileTextFont,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _internProfile(
      String internName, String internEmail, String internTitle) {
    return Column(
      children: [
        const CircleAvatarMock(
          radius: 50,
          imageString: 'assets/woman_picture.png',
        ),
        Gap(15.h),
        Text(
          internName,
          style: TextStyle(
            color: const Color(0xFF2D282E),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        SelectableText(
          internEmail,
          style: TextStyle(
            color: const Color(0xFF423B43),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
          ),
        ),
        Gap(12.h),
        Text(
          internTitle,
          style: TextStyle(
            color: const Color(0xFF423B43),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ),
      ],
    );
  }
}

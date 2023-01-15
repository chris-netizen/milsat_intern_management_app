import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String internName = 'Somoye Christopher';
    String internTitle = 'Mobile Dev. Intern';
    String internEmail = 'adedejisomoye1@gmail.com';
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Edit',
              style: TextStyle(
                color: AppTheme.mainAppTheme,
                fontSize: 20.sp,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: _myProfile(internName, internEmail, internTitle),
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
                  Gap(24.h),
                  Text(
                    'Mentor',
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
                      'Not assigned to a mentor yet',
                      style: profileTextFont,
                    ),
                  ),
                  Gap(24.h),
                  Text(
                    'Internship Adminsion year',
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
                      '2021',
                      style: profileTextFont,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _myProfile(String internName, String internEmail, String internTitle) {
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

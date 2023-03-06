import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/InternPart/screens/more/Report/emoji.dart';
import '../../../../files.dart';
import '../../../intern_data.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    var blocker;
    var blockerText;

    if (data.values.elementAt(3).toString() == 'BlockerOriginN.mentor') {
      blocker = 'Mentor';
    } else if (data.values.elementAt(3).toString() ==
        'BlockerOriginN.teamMember') {
      blocker = 'Team Member';
    } else if (data.values.elementAt(3).toString() == 'BlockerOriginN.self') {
      blocker = 'Self';
    } else if (data.values.elementAt(3).toString() == 'BlockerOriginT.light') {
      blocker = 'Light Issues';
    } else if (data.values.elementAt(3).toString() ==
        'BlockerOriginT.network') {
      blocker = 'Network';
    } else {
      blockerText = data.values.elementAt(3);
    }

    var collaboration;

    if (data.values.elementAt(8).toString() == 'InternRoles.uiUx') {
      collaboration = 'UI/UX';
    } else if (data.values.elementAt(8).toString() == 'InternRoles.frontEnd') {
      collaboration = 'Front End';
    } else if (data.values.elementAt(8).toString() == 'InternRoles.backEnd') {
      collaboration = 'BackEnd';
    } else if (data.values.elementAt(8).toString() ==
        'InternRoles.mobileDevelopment') {
      collaboration = 'Mobile Development';
    } else if (data.values.elementAt(8).toString() ==
        'InternRoles.communityDevelopment') {
      collaboration = 'Community Development';
    } else {
      collaboration = data.values.elementAt(8);
    }

    Widget checked = Icon(
      Icons.check_box,
      color: AppTheme.deepestPurpleColor,
      size: 20.sp,
    );
    Widget unChecked = Icon(
      Icons.check_box_outline_blank,
      color: const Color(0xFFA29CA2),
      size: 20.sp,
    );
    Widget radioChecked = Icon(
      Icons.radio_button_checked,
      color: AppTheme.deepestPurpleColor,
      size: 20.sp,
    );
    Widget radioUnchecked = Icon(
      Icons.radio_button_unchecked,
      color: Colors.grey[400],
      size: 20.sp,
    );

    Widget nonTechnical = Column(
      children: [
        Row(
          children: [
            blocker == 'Self' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Self',
              style: GoogleFonts.raleway(
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            blocker == 'Mentor' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Mentor',
              style: GoogleFonts.raleway(
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            blocker == 'Team Member' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Team Member',
              style: GoogleFonts.raleway(
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ],
    );

    Widget technical = Column(
      children: [
        Row(
          children: [
            blocker == 'Light Issues' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Light Issues',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            blocker == 'Network' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Network',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            radioUnchecked,
            Gap(16.w),
            Text(
              'Others',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ],
    );

    Widget othersText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Other reasons',
          style: GoogleFonts.raleway(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Gap(8.h),
        Container(
          height: 40.h,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFFF2EBF3),
            border: Border.all(
              color: const Color(0xffCBADCD),
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Text(
            blockerText ?? 'Others',
            style: GoogleFonts.raleway(
              fontSize: 18.sp,
            ),
          ),
        )
      ],
    );

    Widget collaborationB = Column(
      children: [
        Row(
          children: [
            collaboration == 'UI/UX' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'UI/UX',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            collaboration == 'Front End' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Front end',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            collaboration == 'BackEnd' ? radioChecked : radioUnchecked,
            Gap(16.w),
            Text(
              'Back end',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            collaboration == 'Mobile Development'
                ? radioChecked
                : radioUnchecked,
            Gap(16.w),
            Text(
              'Mobile Development',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        Gap(16.h),
        Row(
          children: [
            collaboration == 'Community Development'
                ? radioChecked
                : radioUnchecked,
            Gap(16.w),
            Text(
              'Community Development',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 0.5,
        backgroundColor: AppTheme.mainAppTheme,
        title: Text(
          'Submit',
          style: GoogleFonts.raleway(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            AppNavigator.pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 16.h,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Name',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(8.h),
            Container(
              height: 40.h,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: const Color(0xFFF2EBF3),
                border: Border.all(
                  color: const Color(0xffCBADCD),
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                data['name'],
                style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                ),
              ),
            ),
            Gap(24.h),
            Text(
              'Department',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(8.h),
            Container(
              height: 40.h,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: const Color(0xFFF2EBF3),
                border: Border.all(
                  color: const Color(0xffCBADCD),
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                data['department'],
                style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                ),
              ),
            ),
            Gap(8.h),
            const Divider(),
            Gap(8.h),
            Text(
              'Blocker type',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(16.h),
            Row(
              children: [
                data['blockerType'] == 'Technical' ? checked : unChecked,
                Gap(16.w),
                Text(
                  'Technical',
                  style: GoogleFonts.raleway(
                    fontSize: 16.sp,
                  ),
                )
              ],
            ),
            Gap(16.h),
            Row(
              children: [
                data['blockerType'] == 'Non-Technical' ? checked : unChecked,
                Gap(16.w),
                Text(
                  'Non-Technical',
                  style: GoogleFonts.raleway(
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            Gap(24.h),
            Text(
              'Blocker origin',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(16.h),
            if (data['blockerType'] == 'Technical' && blockerText == null)
              technical
            else if (data['blockerType'] == 'Technical' && blockerText != null)
              othersText
            else
              nonTechnical,
            Gap(8.h),
            const Divider(),
            Gap(8.h),
            Text(
              'Current Task working on',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(16.h),
            Container(
              // height: 40.h,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: const Color(0xFFF2EBF3),
                border: Border.all(
                  color: const Color(0xffCBADCD),
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                data['currentTask'],
                style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                ),
              ),
            ),
            Gap(24.h),
            Text(
              'How many hours have you dedicated this week for your tasks/assignment?',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(16.h),
            Container(
              height: 40.h,
              width: 180.w,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: const Color(0xFFF2EBF3),
                border: Border.all(
                  color: const Color(0xffCBADCD),
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data['hoursDedicated'],
                    style: GoogleFonts.raleway(
                      fontSize: 16.sp,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                  )
                ],
              ),
            ),
            Gap(24.h),
            Text(
              'Collaboration (Current team involved with)',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(16.h),
            collaborationB,
            Gap(24.h),
            Text(
              'Elaborate ongoing task',
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(16.h),
            Container(
              // height: 40.h,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: const Color(0xFFF2EBF3),
                border: Border.all(
                  color: const Color(0xffCBADCD),
                ),
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                data['ongoingTask'],
                style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                ),
              ),
            ),
            Gap(24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EmojiBox(
                  emoji: '😍',
                  text: 'Good',
                  color: data['emotions'] == 'Good'
                      ? AppTheme.deepestPurpleColor
                      : const Color(0xFF803785),
                  width: data['emotions'] == 'Good' ? 2.0 : 1.0,
                ),
                EmojiBox(
                  emoji: '🙁',
                  text: 'Fair',
                  color: data['emotions'] == 'Fair'
                      ? AppTheme.deepestPurpleColor
                      : const Color(0xFF803785),
                  width: data['emotions'] == 'Fair' ? 2.0 : 1.0,
                ),
                EmojiBox(
                  emoji: '😤',
                  text: 'Poor',
                  color: data['emotions'] == 'Poor'
                      ? AppTheme.deepestPurpleColor
                      : const Color(0xFF803785),
                  width: data['emotions'] == 'Poor' ? 2.0 : 1.0,
                ),
              ],
            ),
            Gap(24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    AppNavigator.pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 14.sp,
                        color: AppTheme.deepPurpleColor,
                      ),
                      Gap(10.h),
                      Text(
                        'Previous',
                        style: GoogleFonts.raleway(
                          fontSize: 14.sp,
                          color: AppTheme.deepPurpleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Timer(
                        const Duration(milliseconds: 1000),
                        () => showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Submitted'),
                                content:
                                    const Text('Your report will be reviewed'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      AppNavigator.navigateToAndReplace(
                                          mainPage);
                                    },
                                    child: const Text('OK'),
                                  )
                                ],
                              );
                            }));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Submit',
                        style: GoogleFonts.raleway(
                          fontSize: 14.sp,
                        ),
                      ),
                      Gap(10.h),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  alertUser() {}
}

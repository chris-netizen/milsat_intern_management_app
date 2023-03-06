import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/InternPart/screens/more/Report/hoursDropdown.dart';
import '../../../intern_data.dart';
import 'emoji.dart';

enum InternRoles {
  none,
  uiUx,
  frontEnd,
  backEnd,
  mobileDevelopment,
  communityDevelopment
}

class Engagement extends StatefulWidget {
  const Engagement({super.key});

  @override
  State<Engagement> createState() => _EngagementState();
}

class _EngagementState extends State<Engagement> {
  InternRoles? _roles = InternRoles.none;
  final _formKey = GlobalKey<FormState>();
  final currentTaskController = TextEditingController();
  final hoursTextController = TextEditingController();
  final ongoingTaskController = TextEditingController();
  bool goodTapped = false;
  bool fairTapped = false;
  bool poorTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Engagement',
          style: GoogleFonts.raleway(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppTheme.mainAppTheme,
        elevation: 0.5,
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  top: 16.h,
                  right: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Task working on',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(8.h),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Current Task Must not be empty';
                        } else if (value.length < 10) {
                          return 'current task is too short';
                        }
                        return null;
                      },
                      controller: currentTaskController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Gap(16.h),
                    Text(
                      'How many hours did you dedicate this week for your tasks/assignment?',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(8.h),
                    const HoursDropdownButton(),
                    // TextFormField(

                    //   validator: (value) {
                    //     if (value!.isEmpty) {
                    //       return 'hours cannot not be empty';
                    //     } else if (value.length > 10) {
                    //       return 'hours cannot be too long';
                    //     }
                    //     return null;
                    //   },
                    //   controller: hoursTextController,
                    //   decoration: const InputDecoration(
                    //     hintText: 'e.g 2 hrs',
                    //     border: OutlineInputBorder(),
                    //   ),
                    // ),
                    Gap(16.h),
                    Text(
                      'Collaboration (Current team involved with)',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(8.h),
                  ],
                ),
              ),
              ListTile(
                title: const Text('UI/UX'),
                leading: Radio<InternRoles>(
                  value: InternRoles.uiUx,
                  groupValue: _roles,
                  onChanged: (InternRoles? value) {
                    setState(() {
                      _roles = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Front End'),
                leading: Radio<InternRoles>(
                  value: InternRoles.frontEnd,
                  groupValue: _roles,
                  onChanged: (InternRoles? value) {
                    setState(() {
                      _roles = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Backend'),
                leading: Radio<InternRoles>(
                  value: InternRoles.backEnd,
                  groupValue: _roles,
                  onChanged: (InternRoles? value) {
                    setState(() {
                      _roles = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Mobile Development'),
                leading: Radio<InternRoles>(
                  value: InternRoles.mobileDevelopment,
                  groupValue: _roles,
                  onChanged: (InternRoles? value) {
                    setState(() {
                      _roles = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Community Development'),
                leading: Radio<InternRoles>(
                  value: InternRoles.communityDevelopment,
                  groupValue: _roles,
                  onChanged: (InternRoles? value) {
                    setState(() {
                      _roles = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  top: 8.w,
                  right: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Elaborate ongoing task',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gap(8.h),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'form cannot be empty';
                        } else if (value.length < 10) {
                          return 'elaborate more';
                        }
                        return null;
                      },
                      controller: ongoingTaskController,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Gap(16.h),
                    Text(
                      'Mentors engagement this week',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                      ),
                    ),
                    Gap(8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            goodTapped = true;
                            fairTapped = false;
                            poorTapped = false;
                            data['emotions'] = 'Good';
                            setState(() {});
                          },
                          child: EmojiBox(
                            emoji: '😍',
                            text: 'Good',
                            color: goodTapped
                                ? AppTheme.deepestPurpleColor
                                : const Color(0xFF803785),
                            width: goodTapped ? 2.0 : 1.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            goodTapped = false;
                            fairTapped = true;
                            poorTapped = false;
                            data['emotions'] = 'Fair';
                            setState(() {});
                          },
                          child: EmojiBox(
                            emoji: '🙁',
                            text: 'Fair',
                            color: fairTapped
                                ? AppTheme.deepestPurpleColor
                                : const Color(0xFF803785),
                            width: fairTapped ? 2.0 : 1.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            goodTapped = false;
                            fairTapped = false;
                            poorTapped = true;
                            data['emotions'] = 'Poor';
                            setState(() {});
                          },
                          child: EmojiBox(
                            emoji: '😤 ',
                            text: 'Poor',
                            color: poorTapped
                                ? AppTheme.deepestPurpleColor
                                : const Color(0xFF803785),
                            width: poorTapped ? 2.0 : 1.0,
                          ),
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
                            if (_formKey.currentState!.validate()) {
                              data['currentTask'] = currentTaskController.text;
                              // data['hoursDedicated'] = hoursTextController.text;
                              data['ongoingTask'] = ongoingTaskController.text;
                              data['collaboration'] = _roles;
                              AppNavigator.navigateTo(submit);
                            }
                          },
                          child: Row(
                            children: [
                              Text(
                                'Next',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

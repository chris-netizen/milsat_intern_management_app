import 'dart:ui';

import 'package:flutter/material.dart';

import '../../files.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController institutionController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController mentorController = TextEditingController();
  TextEditingController admissionYearController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController internRoleController = TextEditingController();

  Color errorBorderColor = Colors.yellowAccent;
  int maxLength = 33;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: GestureDetector(
                onTap: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data...')),
                    );

                    _formKey.currentState?.save();
                  }
                },
                child: Text(
                  'Update',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Stack(
                children: [
                  const CircleAvatarMock(
                    radius: 50,
                    imageString: 'assets/woman_picture.png',
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: const BoxDecoration(
                          color: AppTheme.deepPurpleColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add_a_photo,
                          color: AppTheme.mainAppTheme,
                          size: 15.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Gap(30.h),
              Form(
                key: _formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(15.h),
                    Text(
                      'Name',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split(' ') == String) {
                          return 'Name should be text';
                        } else if (value.split(' ').length > 3) {
                          return 'Name should not be more than 3 words';
                        }
                        return null;
                      },
                      maxLength: maxLength,
                    ),
                    Gap(15.h),
                    Text(
                      'Bio',
                      style: profileTextHeader,
                    ),
                    Text(
                      'Should not be more that 50 words',
                      style: TextStyle(
                        color: const Color(0xFF5E545F),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'RaleWay',
                      ),
                    ),
                    Gap(8.h),
                    TextFormField(
                      maxLines: 5,
                      minLines: 1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split(' ').length > 50) {
                          return 'Maximum Characters should not be more than 50';
                        }
                        return null;
                      },
                    ),
                    Gap(15.h),
                    Text(
                      'Institution',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split(' ').length > 10) {
                          return 'Maximum Characters should not be more than 10';
                        }
                        return null;
                      },
                    ),
                    Gap(15.h),
                    Text(
                      'Course of Study',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split(' ').length > 10) {
                          return 'Maximum Characters should not be more than 10';
                        }
                        return null;
                      },
                    ),
                    Gap(15.h),
                    Text(
                      'Mentor',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split(' ') == String) {
                          return 'Name should be text';
                        } else if (value.split(' ').length > 3) {
                          return 'Name should not be more than 3 characters';
                        }
                        return null;
                      },
                    ),
                    Gap(15.h),
                    Text(
                      'Internship Admission Year',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split('') == int) {
                          return 'Maximum Characters should not be more than 10';
                        }
                        return null;
                      },
                    ),
                    Gap(15.h),
                    Text(
                      'Email',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      maxLines: 5,
                      minLines: 1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        final emailPattern = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

                        if (value == null || value.isEmpty) {
                          return 'Email cannot be empty';
                        } else if (!emailPattern.hasMatch(value)) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                    ),
                    Gap(15.h),
                    Text(
                      'Intern Role',
                      style: profileTextHeader,
                    ),
                    Gap(8.h),
                    TextFormField(
                      maxLines: 5,
                      minLines: 1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.split(' ').length > 10) {
                          return 'Maximum Characters should not be more than 10';
                        }
                        return null;
                      },
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

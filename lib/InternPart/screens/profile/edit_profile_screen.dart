import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../files.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(
        source: source,
      );
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  final _formKey = GlobalKey<FormState>();

  String imageDefault = 'assets/woman_picture.png';

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
    Object defaultImage = Image(
      image: AssetImage(imageDefault),
      height: 100.h,
      width: 100.w,
    );
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
                  ClipOval(
                    child: image != null
                        ? Image.file(image!)
                        : defaultImage as Widget,
                  ),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.r),
                                topRight: Radius.circular(4.r),
                              )),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Profile photo',
                                        style: GoogleFonts.raleway(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.delete,
                                          size: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                  Gap(24.h),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          pickImage(ImageSource.camera);
                                        },
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(),
                                              ),
                                              child: const Icon(
                                                Icons.camera_alt,
                                                size: 22,
                                              ),
                                            ),
                                            Gap(8.h),
                                            Text(
                                              'Camera',
                                              style: GoogleFonts.raleway(),
                                            )
                                          ],
                                        ),
                                      ),
                                      Gap(24.w),
                                      GestureDetector(
                                        onTap: () {
                                          pickImage(ImageSource.gallery);
                                        },
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(),
                                              ),
                                              child: const Icon(
                                                Icons.image,
                                                size: 22,
                                              ),
                                            ),
                                            Gap(8.h),
                                            Text(
                                              'Gallery',
                                              style: GoogleFonts.raleway(),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
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

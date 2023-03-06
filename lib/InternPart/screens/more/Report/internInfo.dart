import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/InternPart/utils/validation.dart';
import '../../../intern_data.dart';

class InternInfoPage extends StatefulWidget {
  const InternInfoPage({super.key});

  @override
  State<InternInfoPage> createState() => _InternInfoPageState();
}

class _InternInfoPageState extends State<InternInfoPage> {
  final nameController = TextEditingController();
  final departmentController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.mainAppTheme,
        elevation: 0.5,
        title: Text(
          'Intern Info',
          style: GoogleFonts.raleway(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        // automaticallyImplyLeading: false,
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: GoogleFonts.raleway(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF5E545F),
                          ),
                        ),
                        Gap(8.h),
                        TextFormField(
                          autofillHints: const [AutofillHints.name],
                          controller: nameController,
                          validator: (value) {
                            return Utils.isValidName(value, 'name', 10);
                          },
                          decoration: const InputDecoration(
                            hintText: 'name',
                            filled: true,
                            fillColor: Color(0xFFF2EBF3),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCBADCD),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(46.5.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Department',
                          style: GoogleFonts.raleway(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF5E545F),
                          ),
                        ),
                        Gap(8.h),
                        TextFormField(
                          controller: departmentController,
                          validator: (a) {
                            return Utils.isValidName(a, 'department', 7);
                          },
                          decoration: const InputDecoration(
                            hintText: 'e.g mobile development',
                            filled: true,
                            fillColor: Color(0xFFF2EBF3),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFCBADCD),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(400.h),
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
                        data['name'] = nameController.text;
                        data['department'] = departmentController.text;
                        print(data.entries);
                        AppNavigator.navigateTo(blocker);

                        _formKey.currentState?.save();
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
      ),
    );
  }
}

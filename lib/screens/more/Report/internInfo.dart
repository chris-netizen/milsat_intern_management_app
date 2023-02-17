import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';

class InternInfoPage extends StatefulWidget {
  const InternInfoPage({super.key});

  @override
  State<InternInfoPage> createState() => _InternInfoPageState();
}

class _InternInfoPageState extends State<InternInfoPage> {
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
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                textField('Name', 'name'),
                Gap(46.5.h),
                textField('Department', 'UI/UX Team'),
              ],
            ),
            Gap(300.h),
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
                    AppNavigator.navigateTo(blocker);
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
    );
  }

  Column textField(String text, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.raleway(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF5E545F),
          ),
        ),
        Gap(8.h),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xFFF2EBF3),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFCBADCD),
              ),
            ),
          ),
        )
      ],
    );
  }
}

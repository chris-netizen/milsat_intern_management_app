import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../files.dart';

class Blocker extends StatefulWidget {
  const Blocker({super.key});

  @override
  State<Blocker> createState() => _BlockerState();
}

class _BlockerState extends State<Blocker> {
  bool? checked = false;
  bool? checked1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.5,
        backgroundColor: AppTheme.mainAppTheme,
        title: Text(
          'Blocker',
          style: GoogleFonts.raleway(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  top: 16.w,
                ),
                child: Text(
                  'Blocker type',
                  style: GoogleFonts.raleway(
                    fontSize: 18.sp,
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: (checked),
                    onChanged: (val) {
                      setState(() {
                        checked = val;
                      });
                    },
                  ),
                  Text(
                    'Technical',
                    style: GoogleFonts.raleway(
                      fontSize: 18.sp,
                      color: const Color(0xFF5E545F),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: (checked1),
                    onChanged: (val) {
                      setState(() {
                        checked1 = val;
                      });
                    },
                  ),
                  Text(
                    'Non-Technical',
                    style: GoogleFonts.raleway(
                      fontSize: 18.sp,
                      color: const Color(0xFF5E545F),
                    ),
                  ),
                ],
              ),
              // CheckboxListTile(
              //   value: technical,
              //   title: Text(
              //     'Technical',
              //     style: GoogleFonts.raleway(),
              //   ),
              //   onChanged: (value) {
              //     setState(() {
              //       technical = value;
              //     });
              //   },
              // )
            ],
          ),
          Gap(300.h),
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 16.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
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
          ),
        ],
      ),
    );
  }
}

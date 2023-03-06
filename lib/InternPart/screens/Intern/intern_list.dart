import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';

import '../profile/intern_profile.dart';

class InternList extends StatelessWidget {
  const InternList(
      {super.key,
      required this.internName,
      required this.internRole,
      required this.img});

  final String internName;
  final String internRole;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.mainAppTheme,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
            ),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 170.w,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 13.r,
                            child: Image.asset(
                              img,
                            ),
                          ),
                          Gap(5.w),
                          Text(
                            internName,
                            style: GoogleFonts.raleway(
                              color: const Color(0xFF2D282E),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            internRole,
                            style: GoogleFonts.raleway(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          PopupMenuButton(
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.black,
                            ),
                            iconSize: 18.sp,
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return InternProfile(
                                          internEmail: 'x@gmail.com',
                                          internName: internName,
                                          internTitle: internRole,
                                        );
                                      }));
                                    },
                                    child: Text(
                                      'View Profile',
                                      style: GoogleFonts.raleway(),
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  child: Text(
                                    'message',
                                    style: GoogleFonts.raleway(),
                                  ),
                                ),
                              ];
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 0.h,
          ),
        ],
      ),
    );
  }
}

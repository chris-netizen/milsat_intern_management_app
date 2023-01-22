import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

import '../profile/intern_profile.dart';

class InternList extends StatelessWidget {
  const InternList(
      {super.key, required this.internName, required this.internRole});

  final String internName;
  final String internRole;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.mainAppTheme,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
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
                      width: 150.w,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 13.r,
                            child: Image.asset(
                              'assets/woman_picture.png',
                            ),
                          ),
                          Gap(5.w),
                          Text(
                            internName,
                            style: TextStyle(
                              color: const Color(0xFF2D282E),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Raleway',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            internRole,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Raleway',
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
                                    child: const Text('View Profile'),
                                  ),
                                ),
                                const PopupMenuItem(
                                  child: Text('message'),
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
          const Divider(),
        ],
      ),
    );
  }
}

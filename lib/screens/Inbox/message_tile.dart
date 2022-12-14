import 'package:flutter/material.dart';

import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/screens/Inbox/message_page.dart';

// ignore: camel_case_types
class Message_Tile extends StatelessWidget {
  const Message_Tile({super.key, required this.messageData});

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessagePage(
              messageData: messageData,
            ),
          ),
        );
      },
      child: SizedBox(
        height: 75.h,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      messageData.profilePicture,
                    ),
                    radius: 27.r,
                  ),
                  Gap(24.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          messageData.senderName,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(8.h),
                        SizedBox(
                          // height: 20.h,
                          child: Text(
                            messageData.message,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: AppTheme.textColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '12:00pm',
                        style: TextStyle(
                          color: const Color(0xFF423B43),
                          fontSize: 13.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(8.h),
                      Container(
                        height: 15.h,
                        width: 17.w,
                        decoration: const BoxDecoration(
                          color: Color(0xFF00AFA2),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppTheme.mainAppTheme,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFF2EBF3),
            ),
          ],
        ),
      ),
    );
  }
}

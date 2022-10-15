import 'package:flutter/material.dart';

import 'package:milsat_management_app/files.dart';

// ignore: camel_case_types
class Message_Tile extends StatelessWidget {
  const Message_Tile({super.key, required this.messageData});

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 97.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
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
                      SizedBox(
                        height: 20.h,
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
              ],
            ),
          ),
          const Divider(
            color: Color(0xFFF2EBF3),
          ),
        ],
      ),
    );
  }
}

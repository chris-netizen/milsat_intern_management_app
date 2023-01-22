import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class Sender extends StatelessWidget {
  const Sender({
    super.key,
    required this.messageData,
    required this.text,
  });

  final MessageData messageData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 17.r,
                backgroundImage: const AssetImage(
                  'assets/woman_picture.png',
                ),
              ),
              Gap(10.w),
              Text(
                messageData.senderName,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway',
                  color: const Color(0xFF5E545F),
                ),
              ),
              Gap(5.w),
              Text(
                '2mins',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway',
                  color: const Color(0xFF5E545F),
                ),
              )
            ],
          ),
          Gap(13.h),
          SizedBox(
            width: 275.w,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: const Color(0xFF423B43),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

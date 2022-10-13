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
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              messageData.profilePicture,
            ),
            radius: 27.r,
          ),
          Gap(24.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi'),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/helpers.dart';

import '../../files.dart';

class MessagePage extends StatelessWidget {
  static Route route(MessageData data) => MaterialPageRoute(
        builder: (context) => MessagePage(
          messageData: data,
        ),
      );
  const MessagePage({
    super.key,
    required this.messageData,
  });

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                messageData.profilePicture,
              ),
              radius: 22.r,
            ),
            Gap(15.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageData.senderName,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D282E),
                  ),
                ),
                Gap(3.w),
                Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    color: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: IconButton(
            onPressed: () {
              AppNavigator.doPop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 12.sp,
            ),
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  iconSize: 18.sp,
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                        child: Text('Group Info'),
                      ),
                      PopupMenuItem(
                        child: Text('Media'),
                      ),
                      PopupMenuItem(
                        child: Text('search'),
                      ),
                    ];
                  })),
        ],
      ),
      body: Column(
        children: [
          const Divider(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/helpers.dart';
import 'package:milsat_management_app/screens/Inbox/sender_side.dart';

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
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Today',
                style: TextStyle(fontFamily: 'Raleway'),
              ),
              Gap(3.w),
              const Text(
                '.',
              ),
              Gap(3.w),
              const Text(
                '12:00pm',
                style: TextStyle(fontFamily: 'Raleway'),
              ),
            ],
          ),
          Gap(20.h),
          Expanded(
            child: ListView(
              children: [
                Sender(
                  messageData: messageData,
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
                ),
              ],
            ),
          ),
          const Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
                child: Container(
                  // color: Colors.black,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.add_box_outlined,
                          size: 20,
                          color: Color(0xFF5E545F),
                        ),
                      ),
                      Gap(17.w),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.face,
                          size: 20,
                          color: Color(0xFF5E545F),
                        ),
                      ),
                      TextField(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/helpers.dart';
import 'package:milsat_management_app/screens/Inbox/sender_side.dart';

import '../../files.dart';

class MessagePage extends StatefulWidget {
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
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController senderMessage = TextEditingController();
  bool me = false;
  @override
  Widget build(BuildContext context) {
    List<Sender> senderMessages = [
      Sender(
        messageData: widget.messageData,
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
      ),
      Sender(
        messageData: widget.messageData,
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
      ),
      Sender(
        messageData: widget.messageData,
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
      ),
      Sender(
        messageData: widget.messageData,
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
      ),
      Sender(
        messageData: widget.messageData,
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage(
                    'assets/woman_picture.png',
                  ),
                  radius: 21.r,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 10.h,
                    width: 10.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            Gap(15.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.messageData.senderName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
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
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            AppNavigator.doPop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 12.sp,
          ),
          color: Colors.black,
        ),
        backgroundColor: AppTheme.mainAppTheme,
        elevation: 0.5,
        actions: [
          PopupMenuButton(
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
              }),
        ],
      ),
      body: Stack(
        children: [
          // const Divider(),
          // Gap(10.h),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     const Text(
          //       'Today',
          //       style: TextStyle(fontFamily: 'Raleway'),
          //     ),
          //     Gap(3.w),
          //     const Text(
          //       '.',
          //     ),
          //     Gap(3.w),
          //     Text(
          //       '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()}',
          //       style: TextStyle(fontFamily: 'Raleway'),
          //     ),
          //   ],
          // ),
          // Gap(20.h),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       Sender(
          //         messageData: widget.messageData,
          //         text:
          //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
          //       ),
          //     ],
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(
                left: 10.w,
                // bottom: 1.h,
                // top: 10.h,
              ),
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              child: Row(
                children: [
                  Gap(15.w),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.add_box_outlined,
                        ),
                      ),
                      Gap(15.w),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.emoji_emotions_outlined,
                        ),
                      ),
                    ],
                  ),
                  Gap(15.w),
                  const Expanded(
                    child: TextField(
                      // maxLines: 2,
                      decoration: InputDecoration(
                        hintText: 'Type Something...',
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Gap(15.w),
                  Container(
                    // margin: EdgeInsets.all(8.0),
                    color: AppTheme.deepPurpleColor,
                    width: 70.w,
                    child: Center(
                      child: Row(
                        children: [
                          Gap(10.w),
                          const Text(
                            'Send',
                            style: TextStyle(
                              color: AppTheme.mainAppTheme,
                            ),
                          ),
                          Gap(10.w),
                          Icon(
                            Icons.send,
                            size: 14.sp,
                            color: AppTheme.mainAppTheme,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

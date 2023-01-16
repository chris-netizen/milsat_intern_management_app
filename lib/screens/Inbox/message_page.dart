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
  bool Me = false;
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
            CircleAvatar(
              backgroundImage: NetworkImage(
                widget.messageData.profilePicture,
              ),
              radius: 22.r,
            ),
            Gap(15.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.messageData.senderName,
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
                  messageData: widget.messageData,
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci, pellentesque eget ac ultrices.',
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Color(0xFFa29ca2),
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                    right: 15.w,
                  ),
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
                          Icons.emoji_emotions_outlined,
                          size: 20,
                          color: Color(0xFF5E545F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200.w,
                  height: 41.h,
                  child: TextField(
                    controller: senderMessage,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Type Something....',
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 41.h,
                    color: AppTheme.deepPurpleColor,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: GestureDetector(
                        onTap: () {
                          if (senderMessage.text.isNotEmpty) {
                            Me = !Me;
                            setState(() {});
                          }
                        },
                        child: Row(
                          children: [
                            Text(
                              'Send',
                              style: TextStyle(
                                color: AppTheme.mainAppTheme,
                                fontSize: 15.sp,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Gap(4.w),
                            Icon(
                              Icons.send,
                              size: 14.sp,
                              color: AppTheme.mainAppTheme,
                            ),
                          ],
                        ),
                      ),
                    ),
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

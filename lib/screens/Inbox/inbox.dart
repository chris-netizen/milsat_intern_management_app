import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:milsat_management_app/extras/helpers.dart';

import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/header.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    String hour = TimeOfDay.now().hour.toString();
    String min = TimeOfDay.now().minute.toString();
    final Faker faker = Faker();
    final date = Helpers.randomDate();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 24.h),
            child: Text(
              'Inbox',
              style: TextStyle(
                  fontSize: 25.sp,
                  color: const Color(0xFF2D282E),
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Gap(24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 56.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFCBADCD),
                      ),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'All Conversation',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                            color: AppTheme.greyColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Gap(8.w),
                Container(
                  height: 56.h,
                  width: 76.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFCBADCD),
                    ),
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: const Icon(
                    CupertinoIcons.search,
                    // size: 18,
                    color: AppTheme.greyTextColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: ((context, index) {
              return Message_Tile(
                messageData: MessageData(
                  senderName: faker.person.name(),
                  messageDate: date,
                  profilePicture: Helpers.randomPictureUrl(),
                  message: faker.lorem.sentence(),
                  dateMessage: Jiffy(date).fromNow(),
                ),
                time: '$hour:$min',
              );
            })),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message_sharp,
        ),
      ),
    );
  }
}

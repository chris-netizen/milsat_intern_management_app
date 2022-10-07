import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          height: 22.h,
          width: 143.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFCBADCD),
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: TextField(
            cursorHeight: 12.h,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppTheme.mainAppTheme,
        actions: [
          const Icon(
            Icons.notifications_outlined,
            color: AppTheme.textColor,
          ),
          Gap(12.67.w),
          CircleAvatar(
            radius: 12.r,
            child: Image.asset('assets/person.png'),
          ),
          Gap(24.w),
        ],
      ),
    );
  }
}

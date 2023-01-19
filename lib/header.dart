import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 52.h,
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/app_logo2.png',
                height: 27.h,
                width: 63.w,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                width: 143.w,
                height: 30.h,
                child: TextField(
                  // textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 12.h,
                      width: 12.w,
                      decoration: const BoxDecoration(
                        color: AppTheme.deepPurpleColor,
                      ),
                      child: const Icon(
                        Icons.search,
                        size: 12,
                        color: AppTheme.mainAppTheme,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Intern, message...',
                  ),
                  cursorHeight: 15.h,
                ),
              ),
              GestureDetector(
                onTap: () {
                  AppNavigator.navigateTo(myProfile);
                },
                child: CircleAvatarMock(
                  radius: 12.r,
                  imageString: 'assets/person.png',
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
        ),
      ],
    );
  }
}

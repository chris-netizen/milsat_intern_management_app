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
            bottom: 10.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/app_logo2.png',
                height: 27.h,
                width: 63.w,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      CupertinoIcons.search,
                      color: Colors.black87,
                    ),
                  ),
                  Gap(16.w),
                  CircleAvatarMock(
                    radius: 12.r,
                    imageString: 'assets/person.png',
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.0,
          height: 0,
        ),
      ],
    );
  }
}

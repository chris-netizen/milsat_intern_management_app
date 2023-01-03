import 'package:flutter/material.dart';
import 'package:milsat_management_app/mainpage.dart';

import '../../files.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool tapped = false;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(60.h),
            Image.asset(
              'assets/app_logo2.png',
              height: 40.h,
              width: 150.w,
            ),
            Gap(40.h),
            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: boldTextStyle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(48.h),
                  Text(
                    'Email',
                    style: appTextStyle,
                  ),
                  Gap(8.h),
                  const AppTextField(
                    text: 'Email address',
                    obscureText: false,
                  ),
                  Gap(24.h),
                  Text(
                    'PassWord',
                    style: appTextStyle,
                  ),
                  Gap(8.h),
                  AppTextField(
                    text: 'Password',
                    icon: IconButton(
                      onPressed: () {
                        setState(() {
                          tapped = !tapped;
                        });
                      },
                      icon: Icon(
                        tapped ? FontAwesome.eye_off : FontAwesome.eye,
                        size: 20.01.sp,
                      ),
                    ),
                    obscureText: tapped ? true : false,
                  ),
                  Gap(11.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              checked = !checked;
                              setState(() {});
                            },
                            child: Icon(
                              checked
                                  ? Icons.check_box_outlined
                                  : Icons.check_box_outline_blank,
                              size: 14.sp,
                            ),
                          ),
                          Gap(7.w),
                          Text(
                            'Keep me logged in',
                            style: smallAppTextStyle,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            (MaterialPageRoute(
                              builder: (context) => const ForgetPassword(),
                            )),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: smallAppTextStyle,
                        ),
                      ),
                    ],
                  ),
                  Gap(33.5.h),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        (MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        )),
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontFamily: 'Raleway'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

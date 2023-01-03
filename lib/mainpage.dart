import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = const [
    HomePage(),
    InboxPage(),
    AdminPage(),
    Interns(),
    Others()
  ];

  int currentIndex = 0;
  bool tapped = false;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
      tapped = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/app_logo2.png',
              height: 25.65.h,
              width: 63.w,
            ),
            Gap(45.w),
            Container(
              height: 22.h,
              width: 143.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: AppTheme.deepPurpleColor),
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Intern, message...',
                        ),
                        cursorHeight: 12.h,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Hello, i\'m alive');
                      },
                      child: Container(
                        height: 22.h,
                        width: 22.w,
                        decoration: const BoxDecoration(
                          color: AppTheme.deepPurpleColor,
                        ),
                        child: const Icon(
                          Icons.search,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: AppTheme.mainAppTheme,
        actions: [
          CircleAvatarMock(
            radius: 12.r,
            imageString: 'assets/person.png',
          ),
          Gap(24.w),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppTheme.deepPurpleColor,
        unselectedItemColor: AppTheme.mobileAlertColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mentor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Interns',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

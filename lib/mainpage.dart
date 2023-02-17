import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/screens/more/more.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = const [
    HomePage(),
    InboxPage(),
    MentorPage(),
    Interns(),
    More(),
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

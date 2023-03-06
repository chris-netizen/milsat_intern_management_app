import 'package:flutter/material.dart';
import 'package:milsat_management_app/MentorPart/home.dart';
import 'package:milsat_management_app/MentorPart/intern/assigned_interns.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/InternPart/screens/more/more.dart';

class MainPageMentor extends StatefulWidget {
  const MainPageMentor({super.key});

  @override
  State<MainPageMentor> createState() => _MainPageState();
}

class _MainPageState extends State<MainPageMentor> {
  final pages = const [
    HomePageMentor(),
    AssignedInterns(),
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
            icon: Icon(Icons.people),
            label: 'Interns',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mentors',
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

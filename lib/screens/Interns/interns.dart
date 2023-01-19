// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/dropdownmenu.dart';
import 'package:milsat_management_app/header.dart';
import 'package:milsat_management_app/screens/Interns/intern_card.dart';
import 'package:milsat_management_app/extras/milsat_intern.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/screens/Interns/intern_list.dart';

const List<String> list = <String>[
  'All Department',
  'UI/UX',
  'Web Dev.',
  'Mobile Dev.',
  'Community Dev.',
  'Backend Dev.'
];

const Map<String, dynamic> allDepartment = {
  'Somoye Christopher': 'Mobile Developer',
  'Matthew Oke': 'Backend Developer',
  'Ademoyero Victor': 'Web Developer',
  'Ismail Rachael': 'Community Dev.',
  'Akintola Mercy': 'Community Dev.',
  'Adan Michael': 'UI/UX Designer',
};

class Interns extends StatefulWidget {
  const Interns({super.key});

  @override
  State<Interns> createState() => _InternsState();
}

class _InternsState extends State<Interns> {
  @override
  void initState() {
    windowTapped = true;
    super.initState();
  }

  bool tapped = false;
  bool windowTapped = false;
  Color untappedColor = const Color(0xFF5E545F);
  @override
  Widget build(BuildContext context) {
    int numInterns = 20;
    return Scaffold(
      body: Column(
        children: [
          Header(),
          const MilsatIntern(),
          Padding(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
              right: 16.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Total Intern: ',
                      style: TextStyle(
                        color: const Color(0xFF79717A),
                        fontFamily: 'Raleway',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$numInterns',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (tapped == false) {
                        tapped = !tapped;
                      }
                      windowTapped = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tapped
                          ? AppTheme.deepPurpleColor
                          : AppTheme.mainAppTheme,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.window_outlined,
                      size: 18,
                      color: tapped ? AppTheme.mainAppTheme : untappedColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (tapped != false) {
                        tapped = !tapped;
                      }
                      windowTapped = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tapped
                          ? AppTheme.mainAppTheme
                          : AppTheme.deepPurpleColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.list,
                      size: 18,
                      color: tapped ? untappedColor : AppTheme.mainAppTheme,
                    ),
                  ),
                ),
                const DropdownButtonExample(),
              ],
            ),
          ),
          Expanded(
              child: !windowTapped
                  ? GridView.builder(
                      itemCount: allDepartment.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, i) {
                        return InternCard(
                          internImage: 'assets/woman_picture.png',
                          internName: allDepartment.keys.elementAt(i),
                          internRole: allDepartment.values.elementAt(i),
                        );
                      },
                    )
                  : ListView.builder(
                      itemCount: allDepartment.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int i) {
                        return InternList(
                          internName: allDepartment.keys.elementAt(i),
                          internRole: allDepartment.values.elementAt(i),
                        );
                      },
                    )),
        ],
      ),
    );
  }
}

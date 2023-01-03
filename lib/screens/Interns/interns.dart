// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/dropdownmenu.dart';
import 'package:milsat_management_app/extras/milsat_intern.dart';
import 'package:milsat_management_app/files.dart';

const List<String> list = <String>[
  'All Department',
  'UI/UX',
  'Software Development',
  'Community Development'
];

class Interns extends StatefulWidget {
  const Interns({super.key});

  @override
  State<Interns> createState() => _InternsState();
}

class _InternsState extends State<Interns> {
  @override
  Widget build(BuildContext context) {
    int numInterns = 20;
    return Scaffold(
      body: Column(
        children: [
          const MilsatIntern(),
          Padding(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 24.w,
              right: 24.w,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Total Intern: '),
                    Text(
                      '$numInterns',
                      style: numericStyle,
                    ),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                          color: AppTheme.deepPurpleColor,
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.all(5),
                      child: const Icon(
                        Icons.window_outlined,
                        size: 18,
                        color: AppTheme.mainAppTheme,
                      ),
                    ),
                    const Gap(10),
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.mainAppTheme,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: const Icon(
                        Icons.list,
                        size: 18,
                        // color: AppTheme.mainAppTheme,
                      ),
                    ),
                    Gap(5),
                    const DropdownButtonExample(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

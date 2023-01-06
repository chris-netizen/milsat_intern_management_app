// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/dropdownmenu.dart';
import 'package:milsat_management_app/screens/Interns/intern_card.dart';
import 'package:milsat_management_app/extras/milsat_intern.dart';
import 'package:milsat_management_app/files.dart';

const List<String> list = <String>[
  'All Department',
  'UI/UX',
  'Web Dev.',
  'Mobile Dev.',
  'Community Dev.',
  'Backend Dev.'
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
              left: 16.w,
              right: 16.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text('Total Intern: '),
                        Text(
                          '$numInterns',
                          style: numericStyle,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppTheme.deepPurpleColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.window_outlined,
                          size: 18,
                          color: AppTheme.mainAppTheme,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
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
                    ),
                    const DropdownButtonExample(),
                  ],
                ),
                const Gap(15),
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: 17,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return const InternCard();
            },
          )),
        ],
      ),
    );
  }
}

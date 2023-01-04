import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
      ),
      decoration: BoxDecoration(
        color: AppTheme.mainAppTheme,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/menu_image.png',
            width: 12.w,
          ),
          Gap(10.w),
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xFF000000),
              ),
              style: const TextStyle(
                color: Color(0xFF5E545F),
              ),
              elevation: 16,
              borderRadius: BorderRadius.circular(5),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

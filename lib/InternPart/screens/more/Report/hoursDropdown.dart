import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';
import '../../../intern_data.dart';

List<String> values = <String>[
  'Didn\'t work',
  'Less than 10hrs',
  'More than 10hrs',
];

class HoursDropdownButton extends StatefulWidget {
  const HoursDropdownButton({super.key});

  @override
  State<HoursDropdownButton> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<HoursDropdownButton> {
  String dropdownValue = values.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 150.w,
      padding: EdgeInsets.symmetric(
        horizontal: 6.w,
      ),
      decoration: BoxDecoration(
        // color: AppTheme.mainAppTheme,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xFFCBADCD),
        ),
      ),
      child: DropdownButtonHideUnderline(
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
              data['hoursDedicated'] = dropdownValue;
            });
          },
          items: values.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.raleway(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

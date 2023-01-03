import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:milsat_management_app/extras/constants.dart';

class MilsatIntern extends StatelessWidget {
  const MilsatIntern({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppTheme.deepPurpleColor,
          height: 100.h,
        ),
        Positioned(
          left: 100,
          top: 35,
          child: Text('Milsat Intern', style: internBoldTextStyle),
        ),
      ],
    );
  }
}

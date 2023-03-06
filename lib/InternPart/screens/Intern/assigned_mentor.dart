import 'package:flutter/material.dart';
import 'package:milsat_management_app/InternPart/extras/milsat_mentor.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/header.dart';
import 'package:milsat_management_app/InternPart/screens/Intern/assigned_mentor_details.dart';

class MentorPage extends StatelessWidget {
  const MentorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const MilsatMentor(),
          Gap(24.h),
          const MentorDetails(
            name: 'Ahmad Mohammed',
            title: 'Mobile Developer Mentor',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

import '../../header.dart';

class AssignedInterns extends StatefulWidget {
  const AssignedInterns({super.key});

  @override
  State<AssignedInterns> createState() => _AssignedInternsState();
}

class _AssignedInternsState extends State<AssignedInterns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
        ],
      ),
    );
  }
}

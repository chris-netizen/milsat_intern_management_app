import 'package:flutter/material.dart';

class InternList extends StatelessWidget {
  const InternList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('Intern Name'),
              Text('Department'),
            ],
          ),
        ],
      ),
    );
  }
}

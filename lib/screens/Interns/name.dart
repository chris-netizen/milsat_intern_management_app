import 'package:flutter/material.dart';
import 'package:milsat_management_app/files.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      child: Row(
        children: const [
          CircleAvatarMock(
            radius: 30,
            imageString: 'assets/woman_picture.png',
          ),
        ],
      ),
    );
  }
}

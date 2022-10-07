import 'package:flutter/material.dart';

class CircleAvatarMock extends StatelessWidget {
  final double radius;
  final String imageString;
  const CircleAvatarMock(
      {super.key, required this.radius, required this.imageString});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child: Image.asset(imageString),
    );
  }
}

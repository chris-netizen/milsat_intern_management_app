import 'package:flutter/material.dart';

class WideAppButton extends StatelessWidget {
  final String text;
  final Function() pressed;
  const WideAppButton({super.key, required this.text, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Raleway',
          ),
        ),
      ),
    );
  }
}

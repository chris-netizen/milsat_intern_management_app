import 'package:flutter/material.dart';

import '../files.dart';

class WideAppButton extends StatelessWidget {
  final String text;
  const WideAppButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          (MaterialPageRoute(
            builder: (context) => const ResetPasswordPage(),
          )),
        );
      },
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

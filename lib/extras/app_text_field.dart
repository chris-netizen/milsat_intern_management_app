import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final IconButton? icon;
  const AppTextField(
      {super.key, required this.text, this.icon, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: icon,
        fillColor: const Color(0xFFCBADCD),
        filled: true,
        hintText: text,
        hintStyle: GoogleFonts.raleway(),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFCBADCD),
          ),
        ),
      ),
    );
  }
}

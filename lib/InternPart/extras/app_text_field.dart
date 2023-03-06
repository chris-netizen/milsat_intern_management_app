import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final IconButton? icon;
  final TextEditingController? controller;
  // ignore: prefer_typing_uninitialized_variables
  final validator;
  const AppTextField(
      {super.key,
      required this.text,
      this.icon,
      required this.obscureText,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: icon,
        fillColor: const Color(0xFFF2EBF3),
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

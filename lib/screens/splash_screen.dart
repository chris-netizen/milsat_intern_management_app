import 'package:flutter/material.dart';
import 'package:milsat_management_app/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.mainAppTheme,
      child: Center(
        child: SizedBox(
          height: 46,
          width: 181,
          child: Image.asset(
            'assets/app_logo.png',
          ),
        ),
      ),
    );
  }
}

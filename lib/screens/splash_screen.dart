import 'package:flutter/material.dart';
import 'package:milsat_management_app/extras/constants.dart';
import 'package:milsat_management_app/screens/pre_login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _preLoginScreen();
    super.initState();
  }

  _preLoginScreen() async {
    await Future.delayed(const Duration(milliseconds: 7000), () {});
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      (MaterialPageRoute(
        builder: ((context) => const PreLogin()),
      )),
    );
  }

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

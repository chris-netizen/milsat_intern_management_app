import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:milsat_management_app/screens/login_page.dart';

class PreLogin extends StatelessWidget {
  const PreLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(187),
          SizedBox(
            height: 40,
            width: 157.09,
            child: Image.asset(
              'assets/app_logo.png',
            ),
          ),
          const Gap(61),
          const Text(
            'Welcome to \nMilsat Internship',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'RaleWay',
                fontSize: 31,
                fontWeight: FontWeight.w600),
          ),
          const Gap(184),
          const Text(
            'Login to get started',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF79717A),
            ),
          ),
          const Gap(35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}

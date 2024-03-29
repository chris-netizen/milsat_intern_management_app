// ignore_for_file: use_build_context_synchronously
import 'files.dart';

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
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    AppNavigator.navigateToAndReplace(pre);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.mainAppTheme,
      child: Center(
        child: SizedBox(
          height: 46.h,
          width: 181.w,
          child: Image.asset(
            'assets/app_logo.png',
          ),
        ),
      ),
    );
  }
}

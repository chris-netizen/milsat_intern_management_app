import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'InternPart/core/app_state/state.dart';
import 'files.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (builder, context) {
        return Provider(
          create: (BuildContext context) {
            return AppState();
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              // useMaterial3: true,
              primarySwatch: Colors.purple,
            ),
            home: const SplashScreen(),
            navigatorKey: AppNavigator.navKey,
            onGenerateRoute: AppRouter.generateRoutes,
          ),
        );
      },
    );
  }
}

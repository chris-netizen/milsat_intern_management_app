import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milsat_management_app/screens/Mentor/mentor_profile.dart';
import '../files.dart';
import '../screens/Interns/intern_profile.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case pre:
        return getPageRoute(
          settings: settings,
          view: const PreLogin(),
        );
      case logInRoute:
        return getPageRoute(
          settings: settings,
          view: const LoginPage(),
        );
      case inbox:
        return getPageRoute(
          settings: settings,
          view: const InboxPage(),
        );
      case mentorProfile:
        return getPageRoute(
          settings: settings,
          view: const MentorProfile(),
        );
      case internProfile:
        return getPageRoute(
          settings: settings,
          view: const InternProfile(),
        );

      default:
        return getPageRoute(
          settings: settings,
          view: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

  static PageRoute<dynamic> getPageRoute({
    required RouteSettings settings,
    required Widget view,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(settings: settings, builder: (_) => view)
        : MaterialPageRoute(settings: settings, builder: (_) => view);
  }
}

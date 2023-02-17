import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milsat_management_app/screens/Inbox/message_page.dart';
import 'package:milsat_management_app/screens/profile/edit_profile_screen.dart';
import 'package:milsat_management_app/screens/profile/mentor_profile.dart';
import 'package:milsat_management_app/screens/profile/my_profile.dart';
import '../files.dart';
import '../screens/more/Report/blocker.dart';
import '../screens/more/Report/internInfo.dart';
import '../screens/profile/intern_profile.dart';

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
          view: const InternProfile(
            internEmail: '',
            internName: '',
            internTitle: '',
          ),
        );
      case editProfile:
        return getPageRoute(
          settings: settings,
          view: const EditProfile(),
        );
      case myProfile:
        return getPageRoute(
          settings: settings,
          view: const MyProfile(),
        );
      case internInfo:
        return getPageRoute(
          settings: settings,
          view: const InternInfoPage(),
        );
      case blocker:
        return getPageRoute(
          settings: settings,
          view: const Blocker(),
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

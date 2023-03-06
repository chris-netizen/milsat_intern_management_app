import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:milsat_management_app/InternPart/mainpage.dart';
import 'package:milsat_management_app/InternPart/screens/more/Report/engagement.dart';
import 'package:milsat_management_app/InternPart/screens/more/Report/report.dart';
import 'package:milsat_management_app/InternPart/screens/more/Report/submit.dart';
import 'package:milsat_management_app/InternPart/screens/profile/edit_profile_screen.dart';
import 'package:milsat_management_app/InternPart/screens/profile/mentor_profile.dart';
import 'package:milsat_management_app/InternPart/screens/profile/my_profile.dart';
import 'package:milsat_management_app/MentorPart/home.dart';
import 'package:milsat_management_app/MentorPart/intern/assigned_interns.dart';
import 'package:milsat_management_app/MentorPart/mainpageMentor.dart';
import '../files.dart';
import '../InternPart/screens/more/Report/blocker.dart';
import '../InternPart/screens/more/Report/internInfo.dart';
import '../InternPart/screens/profile/intern_profile.dart';

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
      case mainPage:
        return getPageRoute(
          settings: settings,
          view: const MainPage(),
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
            internTitle: 0,
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
      case engagement:
        return getPageRoute(
          settings: settings,
          view: const Engagement(),
        );
      case report:
        return getPageRoute(
          settings: settings,
          view: const InternReport(),
        );
      case submit:
        return getPageRoute(
          settings: settings,
          view: const Submit(),
        );
      case resetPassword:
        return getPageRoute(
          settings: settings,
          view: ResetPasswordPage(
            email: emailInput['email'],
          ),
        );
      case mainPageMentor:
        return getPageRoute(
          settings: settings,
          view: const MainPageMentor(),
        );
      case homePageMentor:
        return getPageRoute(
          settings: settings,
          view: const HomePageMentor(),
        );
      case assignedInterns:
        return getPageRoute(
          settings: settings,
          view: const AssignedInterns(),
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

import 'package:aspire/screens/dummy_home_screen.dart';
import 'package:flutter/material.dart';

import '../../screens/login_screen.dart';

class NamedRoutes {
  static final String homeScreen = '/homeScreen';
  static final String loginScreen = '/loginScreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    homeScreen: (context) => const DummyHomeScreen(),
    loginScreen: (context) => const LoginScreen(),
  };
}
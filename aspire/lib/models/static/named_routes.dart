import 'package:aspire/screens/dummy_home_screen.dart';
import 'package:flutter/material.dart';

class NamedRoutes {
  static final String homeScreen = '/homeScreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    homeScreen: (context) => const DummyHomeScreen(), 
  };
}
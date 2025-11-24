
import 'package:aspire/screens/Onboarding1.dart';
import 'package:flutter/material.dart';

class NamedRoutes {
  static final String homescreen = '/homescreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    homescreen: (context) => const Onboarding1(), 
  };
}

import 'package:aspire/screens/homescreen.dart';
import 'package:flutter/material.dart';

class NamedRoutes {
  static final String homescreen = '/homescreen';

  static Map<String, Widget Function(BuildContext)> routes = {
    homescreen: (context) => const HomeScreen(), 
  };
}
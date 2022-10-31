import 'package:flutter/material.dart';

import '../screens/about_me_screen.dart';
import '../screens/contact_me_screen.dart';
import '../screens/homescreen.dart';
import '../screens/projects_screen.dart';

var customRoutes = <String, WidgetBuilder>{
  HomeScreen.homeScreenId: (context) => const HomeScreen(),
  // '/homescreen': (context) => const HomeScreen(),
  '/projects': (context) => const ProjectsScreen(),
  '/contact': (context) => const ContactMeScreen(),
  '/about': (context) => const AboutMeScreen(),
};

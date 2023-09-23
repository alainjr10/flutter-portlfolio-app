import 'package:dyce_portfolio/src/features/home/presentation/screens/about_me_screen.dart';
import 'package:dyce_portfolio/src/features/home/presentation/screens/contact_me_screen.dart';
import 'package:dyce_portfolio/src/features/home/presentation/screens/homescreen.dart';
import 'package:dyce_portfolio/src/features/home/presentation/screens/projects_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/projects',
      builder: (context, state) {
        return const ProjectsScreen();
      },
    ),
    GoRoute(
      path: '/about-me',
      builder: (context, state) {
        return const AboutMeScreen();
      },
    ),
    GoRoute(
      path: '/contact-me',
      builder: (context, state) {
        return const ContactMeScreen();
      },
    ),
  ],
);

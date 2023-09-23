import 'package:dyce_portfolio/app/router/router.dart';
import 'package:dyce_portfolio/app/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dyce Portfolio Site',
      routerConfig: router,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kOnPrimaryColor,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: kPrimaryColorShades)
            .copyWith(background: kPrimaryColor),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

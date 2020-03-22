import 'package:flutter/material.dart';
import 'package:nature/src/screens/categories.dart';
import 'package:nature/src/screens/feed.dart';
import 'package:nature/src/screens/home.dart';
import 'package:nature/src/screens/intro.dart';
import 'package:nature/src/screens/login.dart';
import 'package:nature/src/screens/organizations.dart';
import 'package:nature/src/screens/settings.dart';





class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
          '/': (context) => LoginPage(),
          '/intro': (context) => IntroScreen(),
          '/settings': (context) => SettingsScreen(),
          '/home': (context) => HomeScreen(),
          '/feed': (context) => FeedScreen(),
          '/categories': (context) => CategoriesScreen(),
          '/organizations': (context) => Organizations(),

      },
    );
  }
}
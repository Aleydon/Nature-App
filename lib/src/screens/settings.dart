import 'package:flutter/material.dart';
import 'package:nature/src/screens/drawer.dart';








class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: DrawerMenu(),   
         body: Center(
          child: Text('Settings Screen')
        ),
    );
  }
}
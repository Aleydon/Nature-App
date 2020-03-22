import 'package:flutter/material.dart';
import 'drawer.dart';






class Organizations extends StatefulWidget {
  @override
  _OrganizationsState createState() => _OrganizationsState();
}

class _OrganizationsState extends State<Organizations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('OrganizationsScreen')
            ),
            drawer: DrawerMenu(),
            body: Center(
              child: Text('OrganizationsScreen')
            )
        );
  }
}
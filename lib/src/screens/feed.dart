import 'package:flutter/material.dart';
import 'drawer.dart';






class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('FeedScreen')
            ),
            drawer: DrawerMenu(),
            body: Center(
              child: Text('FeedScreen')
            )
        );
  }
}
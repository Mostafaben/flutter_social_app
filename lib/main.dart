import 'package:flutter/material.dart';
import 'package:social/pages/HomePage.dart';
import 'package:social/pages/PreviewPost.dart';
import 'package:social/pages/UserProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/test': (context) => Test(),
        '/profile': (context) => UserProfilePage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Lato",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: Home(),
    );
  }
}

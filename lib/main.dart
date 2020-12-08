import 'package:flutter/material.dart';

import 'components/ActiveUser.dart';
import 'components/CustomBottomNavBar.dart';
import 'components/Post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Lato",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          backgroundColor: new Color(0xFFEBF2FA),
          body: SafeArea(
            child: Column(children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "search",
                          suffixIcon: Icon(
                            Icons.search,
                            color: const Color(0xFF888888),
                            size: 28,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        "Active Users",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      child: ListView(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: [
                          ActiveUser(),
                          ActiveUser(),
                          ActiveUser(),
                          ActiveUser(),
                          ActiveUser(),
                          ActiveUser(),
                        ],
                      ),
                      height: 104,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        "Feed",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Post(),
                    Post(),
                  ],
                ),
              ),
            ]),
          ),
          bottomNavigationBar: CustomBottomNavBar()),
    );
  }
}

import 'package:flutter/material.dart';
import 'components/ActiveUser.dart';
import 'components/Ui-components/CustomBottomNavBar.dart';
import 'components/Post.dart';
import 'components/Ui-components/AppBar.dart';
import 'components/Ui-components/Title.dart';

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
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: Stack(alignment: Alignment.center, children: [
            Column(children: [
              CustomAppBar(),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    CustomTitle("Active Users"),
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
                    CustomTitle("Feed"),
                    Post(),
                    Post(),
                  ],
                ),
              ),
            ]),
            Positioned(
              child: CustomBottomNavBar(),
              bottom: 0,
              width: 320,
            ),
          ]),
        ),
        // bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}

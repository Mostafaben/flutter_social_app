import 'package:flutter/material.dart';

import 'package:social/components/ActiveUser.dart';
import 'package:social/components/Post.dart';
import 'package:social/components/Ui-components/CustomAppBar.dart';
import 'package:social/components/Ui-components/CustomBottomNavBar.dart';
import 'package:social/components/Ui-components/Title.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xffe7edf6),
      body: SafeArea(
        child: Stack(alignment: Alignment.center, children: [
          Column(children: [
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  CustomAppBar(),
                  CustomTitle("Active Users"),
                  SizedBox(
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('tapped');
                            Navigator.pushNamed(
                              context,
                              '/test',
                            );
                          },
                          child: ActiveUser(),
                        ),
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
    );
  }
}

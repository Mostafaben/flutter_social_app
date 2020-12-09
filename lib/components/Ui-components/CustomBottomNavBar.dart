import 'package:flutter/material.dart';
import 'package:social/models/UiModels.dart';

import 'MenuIcon.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<MenuItem> menuItems;

  @override
  void initState() {
    menuItems = [
      MenuItem(Icons.home_outlined, "home", true),
      MenuItem(Icons.add_a_photo_outlined, "Add Photo", false),
      MenuItem(Icons.explore_outlined, "Explore", false),
      MenuItem(Icons.supervised_user_circle_outlined, "Profile", false)
    ];
    super.initState();
  }

  void _changePage(int index) {
    for (int i = 0; i < menuItems.length; i++) {
      if (i == index) {
        menuItems[i].active = true;
      } else {
        menuItems[i].active = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 70,
        margin: EdgeInsets.only(bottom: 8, left: 16, right: 16, top: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < menuItems.length; i++)
              InkWell(
                child: MenuIcon(menuItems[i]),
                onTap: () {
                  setState(() {
                    _changePage(i);
                  });
                },
              )
          ],
        ),
      ),
    );
  }
}

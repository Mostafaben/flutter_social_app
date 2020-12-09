import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class MenuItem {
  IconData icon;
  String title;
  bool active;
  MenuItem(this.icon, this.title, this.active);
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<MenuItem> menuItems = [
    MenuItem(Icons.home_outlined, "home", true),
    MenuItem(Icons.add_a_photo_outlined, "Add Photo", false),
    MenuItem(Icons.explore_outlined, "Explore", false),
    MenuItem(Icons.supervised_user_circle_outlined, "Profile", false)
  ];

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

  void _changePage(int index) {
    for (int i = 0; i < menuItems.length; i++) {
      if (i == index) {
        menuItems[i].active = true;
      } else {
        menuItems[i].active = false;
      }
    }
  }
}

class MenuIcon extends StatelessWidget {
  final MenuItem item;
  MenuIcon(this.item);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.bounceInOut,
      alignment: Alignment.center,
      height: 50,
      padding: item.active
          ? EdgeInsets.symmetric(horizontal: 16)
          : EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: item.active ? Colors.blueAccent[700] : Colors.transparent,
          borderRadius: BorderRadius.circular(22)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            size: item.active ? 20 : 28,
            color: item.active ? Colors.white : Colors.blueGrey[300],
          ),
          (item.icon == Icons.add_a_photo_outlined && item.active)
              ? Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    item.title,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

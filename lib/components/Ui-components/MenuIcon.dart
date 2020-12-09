import 'package:flutter/material.dart';
import 'package:social/models/UiModels.dart';

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

import 'package:flutter/material.dart';

class PostViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.3)),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.white,
          ),
          Text(
            "125",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'Avatar.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://picsum.photos/400/400",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: PostViews(),
                      right: 0,
                      bottom: 0,
                    ),
                  ],
                )),
            Avatar(),
          ],
        ),
      ),
      width: double.infinity,
    );
  }
}

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

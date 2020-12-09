import 'package:flutter/material.dart';
import 'Avatar.dart';
import 'PostViews.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // boxShadow: [
        //   BoxShadow(
        //       blurRadius: 4,
        //       color: Colors.grey[300],
        //       spreadRadius: 2,
        //       offset: Offset(0, 3))
        // ],
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
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          height: 200,
                          width: double.infinity,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes
                                  : null,
                            ),
                          ),
                        );
                      },
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
    );
  }
}

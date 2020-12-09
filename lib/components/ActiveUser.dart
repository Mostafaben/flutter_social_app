import 'package:flutter/material.dart';

class ActiveUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.bounceInOut,
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.red],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
              ),
              child: SizedBox(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                "https://avatars0.githubusercontent.com/u/32815384?s=460&u=56c99b2b8b06a0f4028064facca76dea46997a75&v=4",
                height: 60,
              ),
            ),
          ]),
          Container(
            width: 66,
            margin: EdgeInsets.symmetric(vertical: 4),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: "Mostafa Ben",
                style: TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

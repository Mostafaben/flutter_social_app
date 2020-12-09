import 'package:flutter/material.dart';
import 'package:social/components/Avatar.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            child: Image.network(
              "https://picsum.photos/400",
              fit: BoxFit.cover,
            ),
            top: 0,
            left: 0,
            right: 0,
            height: 400,
          ),
          Positioned(
              top: 350,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(color: Colors.red),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  height: 200,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Avatar(),
                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}

/// custom bottomsheet

// void _showModel(context) {
//   showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(16), topRight: Radius.circular(16))),
//       builder: (BuildContext _context) {
//         return Container(
//           padding: EdgeInsets.all(16),
//           child: Text("dasdas"),
//         );
//       });
// }

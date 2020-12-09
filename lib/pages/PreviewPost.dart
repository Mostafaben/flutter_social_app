import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:social/components/Avatar.dart';
import 'package:social/components/PostViews.dart';

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
              fit: BoxFit.cover,
            ),
            top: 0,
            left: 0,
            right: 0,
            height: 470,
          ),
          Positioned(
              top: 10,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )),
          Positioned(
            child: PostViews(),
            right: 5,
            top: 340,
          ),
          Positioned(
            top: 420,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(0, 10),
                    )
                  ]),
              width: double.infinity,
              padding: EdgeInsets.only(top: 12, right: 20, left: 20),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Avatar(),
                  SizedBox(height: 20),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac quam massa. Phasellus eget nisl nibh. Maecenas ornare erat eu nisi egestas, et ullamcorper nunc ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed quam tortor. Aenean sed porta nibh, a ornare erat. Mauris lacus nibh, mollis sit amet felis at, mattis rhoncus leo. Nulla facilisi. Mauris nec purus eu mauris feugiat vulputate. Nulla facilisi. Etiam at lacus sed ex porta laoreet. '),
                  SizedBox(height: 20),
                  Container(
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        Tag("tnaket azabi"),
                        Tag("tnaket"),
                        Tag("tnaket"),
                        Tag("tnaket"),
                        Tag("tnaket")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Tag extends StatelessWidget {
  final String tag;
  Tag(this.tag);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: Colors.blueAccent[700],
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        tag,
        style: TextStyle(color: Colors.white),
      ),
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

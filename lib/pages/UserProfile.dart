import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              Align(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 120,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://avatars0.githubusercontent.com/u/32815384?s=460&u=56c99b2b8b06a0f4028064facca76dea46997a75&v=4",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  "Benlagha Mostafa",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                  child: Text(
                "fm_benlagha@esi.com",
                style: TextStyle(color: Colors.grey[200], fontSize: 15),
              )),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileItem("Views", 665),
                    ProfileItem("Likes", 665),
                    ProfileItem("Followers", 665)
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  ImageCard(),
                  ImageCard(),
                  ImageCard(),
                ],
              )
            ],
          )),
    );
  }
}

Widget ProfileItem(String title, int count) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        '$count',
        style: TextStyle(color: Colors.grey[300], fontSize: 16),
      )
    ],
  );
}

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://picsum.photos/400",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 16,
          top: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Text(
                  "120",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 22,
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Text(
            "3 days ago",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

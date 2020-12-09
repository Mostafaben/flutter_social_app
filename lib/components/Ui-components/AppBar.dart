import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
                hintText: "search",
                suffixIcon: Icon(
                  Icons.search,
                  color: const Color(0xFF888888),
                  size: 28,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        ),
      ),
    );
  }
}

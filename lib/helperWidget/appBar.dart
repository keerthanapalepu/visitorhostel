import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, color: Colors.white),
      ),
      title: Text("Visitor Hostel"),
      backgroundColor: Colors.black,
      // ignore: prefer_const_literals_to_create_immutables
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("A"),
          ),
        ),
      ],
      elevation: 0,
    );
  }
}
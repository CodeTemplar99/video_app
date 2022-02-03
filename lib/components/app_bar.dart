// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

AppBar baseBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      "Video Uploads",
      style: TextStyle(color: Colors.black),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      onPressed: () => {},
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: IconButton(
            onPressed: () {},
            icon: ClipOval(
              child: Icon(
                Icons.notifications_none_rounded,
                size: 35.0,
                color: Colors.black,
              ),
            )),
      )
    ],
  );
}

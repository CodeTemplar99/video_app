// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      child: Icon(Icons.camera_alt),
      backgroundColor: Colors.blue,
    );
  }
}

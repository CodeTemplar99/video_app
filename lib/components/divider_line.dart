// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.5,
      color: Colors.grey,
      height: 20,
    );
  }
}

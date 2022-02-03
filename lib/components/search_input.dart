// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search video...",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        ),
      ),
    );
  }
}

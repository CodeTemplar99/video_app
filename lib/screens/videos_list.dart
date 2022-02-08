// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:video_app/components/app_bar.dart';
import 'package:video_app/components/custom_nav_bar.dart';
import 'package:video_app/components/divider_line.dart';
import 'package:video_app/components/list_item.dart';
import 'package:video_app/components/search_input.dart';

class VideosList extends StatelessWidget {
  const VideosList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseBar(title: Text('hello')),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              DividerLine(),
              SizedBox(
                height: 15,
              ),
              SearchInput(),
              SizedBox(
                height: 10,
              ),
              ListItem(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

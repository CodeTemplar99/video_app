// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:video_app/components/app_bar.dart';
import 'package:video_app/components/floating_button.dart';
import 'package:video_app/components/list_item.dart';

class VideosList extends StatelessWidget {
  const VideosList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Divider(
                thickness: 0.5,
                color: Colors.grey,
                height: 20,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: "Search video...",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: Icon(Icons.search),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListItem(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingButton(),
    );
  }
}

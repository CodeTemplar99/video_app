// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:video_app/components/app_bar.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: baseBar(
          title: Text("hello"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SizedBox(
                    height: 250,
                    width: 300,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 400,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48.0, vertical: 5),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "video title",
                                  prefixIcon: Icon(Icons.font_download),
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48.0, vertical: 5),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "Mumbai, India",
                                  prefixIcon: Icon(Icons.location_on),
                                  enabled: false,
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 48.0, vertical: 5),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "category",
                                  prefixIcon: Icon(Icons.list),
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 48.0, vertical: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Post',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(50)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  getTemporaryDirectory(z) {
    return z;
  }
}

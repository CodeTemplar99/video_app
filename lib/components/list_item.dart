// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:video_app/screens/video_detail.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => VideoDetail()));
      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              size: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'How to upload a picture online',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '@Mitchel Chiadika',
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          '75 views',
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      '9:50,',
                      style: TextStyle(color: Colors.black54, fontSize: 12.0),
                    ),
                    Text(
                      'Paris',
                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Automobile',
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

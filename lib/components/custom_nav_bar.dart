// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_app/constants.dart';
import 'package:video_app/screens/record_screen.dart';
import 'package:video_app/screens/videos_list.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final bool isActive;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) KDefaultShadow],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: Colors.black45,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // if (isFullcard)
              NavItem(
                icon: Icons.satellite_rounded,
                title: "Explore",
                press: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideosList(),
                    ),
                  );
                },
              ),
              NavItem(
                icon: Icons.add,
                title: "New",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

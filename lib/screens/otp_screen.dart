// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_app/screens/videos_list.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              "assets/images/logo.png",
              width: 250,
            ),
            SizedBox(
              height: 150,
            ),
            Text(
              'Enter OTP',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter your mobile number'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              child: Text('Did not get otp,resend?'),
              onPressed: () {},
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => VideosList()),
                      (Route<dynamic> route) => false);
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

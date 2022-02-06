// ignore_for_file: prefer_const_constructors

// import 'package:firebase_core/firebase_core.dart';
// import 'package:camera/camera.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_app/home_screen.dart';

// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // final cameras = await availableCameras();
//   runApp(MyApp(cameras: [],));
// }
List<CameraDescription> cameras = [];

Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(MyApp(
    cameras: cameras,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required List cameras,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

import 'package:flutter_app_ui/screens/home.dart';
import 'package:flutter_app_ui/screens/settings.dart';
import 'package:flutter_app_ui/screens/videos.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MONEYiDESIGN',
      theme: ThemeData(
          //canvasColor: Colors.blueAccent,
          accentColor: Colors.orangeAccent,
          backgroundColor: Colors.orangeAccent,

          //brightness: Brightness.light
      ),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => Home(),
        'videos': (context) => Videos(),
        'settings': (context) => Settings()
      },
    );
  }
}

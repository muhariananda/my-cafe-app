import 'package:flutter/material.dart';
import 'package:my_caffe_app/screens/home/home_screen.dart';

void main() => runApp(const MyCaffeApp());

class MyCaffeApp extends StatelessWidget {
  const MyCaffeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Caffe',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: const Color(0xfff5f6fa),
      ),
      home: const HomeScreen(),
    );
  }
}

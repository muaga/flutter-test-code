import 'package:flutter/material.dart';
import 'package:flutter_widget_test/test_code/image_slider/slider_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliverWidget(),
    );
  }
}

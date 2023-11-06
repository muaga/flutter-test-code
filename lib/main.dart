import 'package:flutter/material.dart';
import 'package:flutter_widget_test/test_code/image_slider/all_slider.dart';
import 'package:flutter_widget_test/widgets/reading_page/reading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReadingPage(),
    );
  }
}

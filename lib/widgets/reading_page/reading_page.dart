import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/font.dart';
import 'package:flutter_widget_test/constants/size.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    String content = "가가";
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70 + 24, horizontal: gapXlarge),
        child: Container(
          height: getScreenHeight(context),
          width: getScreenWidth(context),
          color: kBackGray,
          child: Text("${content}",
              style:
                  TextStyle(fontFamily: 'D2Coding', fontSize: 23, height: 1.4)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/size.dart';

class ExpensionTile extends StatelessWidget {
  const ExpensionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ExpansionTile(
          title: new Text(
            '기본 정보',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getScreenWidth(context) * (16 / 360),
                color: Colors.black),
          ),
          initiallyExpanded: true,
          backgroundColor: Colors.white,
          children: <Widget>[
            Container(
              height: getScreenHeight(context) * 0.05,
              width: getScreenWidth(context),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(context) * 0.0444444),
                child: Row(
                  children: [
                    SizedBox(
                      width: getScreenWidth(context) * 0.24444,
                      child: Text(
                        '기존 월세',
                        style: TextStyle(
                          color: kFontRed,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      '234만원',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

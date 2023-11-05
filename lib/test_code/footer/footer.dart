import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Footer View Example')), // 수정: title 속성의 생성자 호출 방식
      body: FooterView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Center(
              child: Text('Scrollable View'),
            ),
          ),
        ],
        // Footer 자리
        footer: Footer(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('I am a Customizable footer!!'),
          ),
        ),
        flex: 1, // default flex is 2
      ),
    );
  }
}

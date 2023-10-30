import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/search/ex_body.dart';

class EXPage2 extends StatelessWidget {
  const EXPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: EXBody2(),
    );
  }
}

import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [TextFormField()],
        ),
      ),
    );
  }
}

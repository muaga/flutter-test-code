import 'package:flutter/material.dart';

class NextTestPage extends StatelessWidget {
  final String searchText;
  const NextTestPage({super.key, required this.searchText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(searchText, style: TextStyle(fontSize: 50)),
      ),
    );
  }
}

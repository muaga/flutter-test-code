import 'package:flutter/material.dart';
import 'package:flutter_widget_test/move.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
        // TODO : 외부화면 클릭 시 키보드 닫기 이벤트
      },
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: Move.EXPage2,
        routes: getRouters(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_widget_test/widgets/checkbox_test.dart';
// import 'package:flutter_widget_test/widgets/next_text_page.dart';
// import 'package:flutter_widget_test/widgets/real/result/ex_Page.dart';
// import 'package:flutter_widget_test/widgets/real/search/ex_page.dart';
// import 'package:flutter_widget_test/widgets/search_page/cupertino_search_bar.dart';
// import 'package:flutter_widget_test/widgets/search_result_page/my_home_page.dart';
//
// class Move {
//   // TODO : 서버 측 엔드포인트 확인 -> 변경하기
//   static String EXPage2 = "/exPage2";
//   static String MyHomePage = "/MyHomePage";
//   static String SearchResultPage = "/SearchResultPage";
//   static String NextTextPage = "/nextTest";
//   static String CupertinoSearchBar = "/SearchTextFieldApp";
//   static String CheckboxExample = "/CheckboxExample";
// }
//
// Map<String, Widget Function(BuildContext)> getRouters() {
//   return {
//     // 예시
//     // Move.BookDetailPage: (context) {
//     //   final bookId = ModalRoute.of(context)!.settings.arguments as int;
//     //   // 현재 경로에서 전달되는 인수
//     //   return BookDetailPage(bookId: bookId);
//     // },
//
//     Move.CupertinoSearchBar: (context) => const CupertinoSearchBar(),
//     Move.EXPage2: (context) => const EXPage2(),
//     Move.CheckboxExample: (context) => const CheckboxExample(),
//     Move.MyHomePage: (context) => MyHomePage(title: 'hello'),
//     // Move.SearchResultPage: (context) => SearchResultPage(),
//     Move.NextTextPage: (context) {
//       final searchText = ModalRoute.of(context)!.settings.arguments as String;
//       return NextTestPage(searchText: searchText);
//     },
//     Move.SearchResultPage: (context) {
//       final searchText = ModalRoute.of(context)!.settings.arguments as String;
//       return SearchResultPage(searchText: searchText);
//     },
//   };
// }

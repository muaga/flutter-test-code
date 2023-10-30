import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/result/ex_Page.dart';
import 'package:logger/logger.dart';

/// 이걸 쓰자!!!!!

class TextFormFieldSearchBar extends StatelessWidget {
  TextFormFieldSearchBar({super.key, this.searchText});
  final String? searchText;

  @override
  Widget build(BuildContext context) {
    Logger().d("searchText : ${searchText}");
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      pinned: true,
      leading: Icon(
        Icons.search_rounded,
        color: Colors.black,
      ),
      title: TextFormField(
        decoration: InputDecoration(
          hintText: searchText ?? "검색어를 입력하세요",
          hintStyle: TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          errorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide.none),
        ),
        onFieldSubmitted: (String value) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SearchResultPage(_searchText: value)));
          Logger().d("searchText : ${value}");
        },
      ),
    );
  }
}

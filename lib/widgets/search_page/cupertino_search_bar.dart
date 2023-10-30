import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/result/ex_Page.dart';

class CupertinoSearchBar extends StatelessWidget {
  const CupertinoSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0.5,
      pinned: true,
      title: CupertinoSearchTextField(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        placeholder: "검색어를 입력하세요",
        placeholderStyle: TextStyle(fontSize: 20, color: Colors.black45),
        decoration: BoxDecoration(color: Colors.white),
        prefixIcon: Icon(Icons.search_rounded, size: 25),
        style: TextStyle(fontSize: 20),
        onSubmitted: (String value) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SearchResultPage(_searchText: value)));
        },
      ),
    );
  }
}

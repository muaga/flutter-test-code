import 'package:flutter/material.dart';

class SuggestKeyword extends StatelessWidget {
  // List<String> keyword;
  // SuggestKeywordPage({required this.keyword});

  @override
  Widget build(BuildContext context) {
    List<String> suggestKeyword = [
      "무라카미",
      "힐링이 필요해",
      "미야자키 하야오",
      "카테고리 철학",
      "최재호"
    ];
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // 가로 스크롤
            itemCount: suggestKeyword.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(suggestKeyword[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black45),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/suggest_keyword.dart';
import 'package:flutter_widget_test/widgets/search_page/cupertino_search_bar.dart';

class EXBody extends StatefulWidget {
  const EXBody({super.key});

  @override
  State<EXBody> createState() => _EXBodyState();
}

class _EXBodyState extends State<EXBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CupertinoSearchBar(),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text("밀리 추천 검색어",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        )),
        SuggestKeyword(),
        // SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // 컨테이너의 배경색
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, // 그림자의 색상
                    offset: Offset(0, 1), // 그림자의 위치 (x, y)
                    blurRadius: 5.0, // 그림자의 흐림 정도
                    spreadRadius: 1.0, // 그림자의 확산 정도
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("나는 왜 자꾸 내 탓을 할까",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 5),
                          Text("불안도 우울도 강점이 될 수 있다!",
                              style: TextStyle(fontSize: 14))
                        ]),
                    Container(child: Text("사진")),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Container(
          width: double.infinity,
          height: 20,
          decoration: BoxDecoration(color: Colors.black12),
        )),
        SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: 50.0,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('카테고리', style: TextStyle(color: Colors.black)),
          ),
        ),
        SliverFillRemaining(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('아이템 $index'),
              );
            },
          ),
        )
      ],
    );
  }
}

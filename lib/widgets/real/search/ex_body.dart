import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/suggest_keyword.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/textformfield_search_bar.dart';

/// 이걸 사용하도록 !!!!!!
class EXBody2 extends StatefulWidget {
  const EXBody2({super.key});

  @override
  State<EXBody2> createState() => _EXBodyState();
}

class _EXBodyState extends State<EXBody2> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          TextFormFieldSearchBar(),
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
                height: 100,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("나는 왜 자꾸 내 탓을 할까",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 5),
                          Text("불안도 우울도 강점이 될 수 있다!",
                              style: TextStyle(fontSize: 14))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 100,
                        width: 70,
                        child: Image(
                          image: AssetImage("assets/book8.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
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
            expandedHeight: 60,
            elevation: 0.5,
            pinned: true,
            floating: false,
            title: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "카테고리",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ];
      },
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "만화",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text("인문·교양, 일상·드라마, 청소년, 그래픽",
                                overflow: TextOverflow.ellipsis), // 말 줄임표
                          ]),
                    ),
                    Container(
                      width: 80,
                      color: Colors.amber,
                      child: Text("사진"),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

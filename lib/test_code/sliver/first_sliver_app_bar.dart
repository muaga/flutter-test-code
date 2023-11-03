import 'package:flutter/material.dart';

// ScrollView
// - appbar에 image 넣기
// - appbar 2개 만들기
// - appbar 고정하기
// - appbar snap / floating
// List 만들기

class FirstAppbar extends StatelessWidget {
  const FirstAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // = appbar
        SliverAppBar(
          snap: true,
          floating: true,
          // pinned가 false일 때, 제일 상단으로 가지 않아도
          // 스크롤 방향을 위로 가도록 손으로 튕기면
          // 숨겨진 "appbar2"가 생긴다.
          // snap이 있다면 자동으로 1번까지 올라가고,
          // snap이 없다면 1번까지 올라가지 않지만, "appbar2"를 보여준다.

          pinned: false, // appbar 고정 X
          title: Text("appbar2", style: TextStyle(color: Colors.white)),
          expandedHeight: 250, // 확장될 수 있는 최대 공간
          flexibleSpace: Container(
            // appbar에 image 넣기
            child: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),

          // flexibleSpace: FlexibleSpaceBar()
          // 같은 appbar의 공간으로,
          // 스크롤 시 Flexible의 공간이 사라지기 전까지 "appbar2"는 유지한다.
        ),

        SliverAppBar(
          pinned: true, // appbar 고정 O
          title: Text("appbar1", style: TextStyle(color: Colors.white)),
        ),

        // = ListView
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            // ListView 처럼 itemCount를 줄 수 있다.
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("${index}"),
              trailing: Icon(Icons.add),
            ),
          ),
        )
      ],
    );
  }
}

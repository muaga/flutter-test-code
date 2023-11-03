import 'package:flutter/material.dart';

class TwoAppBarsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          Stack(
            children: [
              SliverAppBar(
                expandedHeight: 250, // 스크롤되는 App Bar의 높이
                floating: false,
                pinned: false, // 1번 App Bar는 pinned를 false로 설정
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      color: constraints.biggest.height < kToolbarHeight
                          ? Colors.transparent
                          : Colors.white, // 스크롤 위치에 따라 색상 변경
                      child: FlexibleSpaceBar(
                        title: Text("1st App Bar"),
                      ),
                    );
                  },
                ),
              ),
              SliverAppBar(
                backgroundColor: Colors.transparent, // 2번 App Bar는 투명한 배경 색상
                expandedHeight: 100, // 스크롤되지 않는 App Bar의 높이
                pinned: true, // 2번 App Bar는 pinned를 true로 설정
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("2nd App Bar"),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// statefulWidget : build 메소드가 여러번 실행될 수 있다. = 상태 변경
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/search_post_list.dart';

class SearchResultTabBarView extends StatelessWidget {
  SearchResultTabBarView({
    super.key,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        /// 통합
        Column(
          children: [
            Container(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "독서 2",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          _tabController?.animateTo(1);
                        },
                        icon: Icon(Icons.arrow_forward_ios))
                  ],
                )),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) =>
                    Image.network("https://picsum.photos/id/${index}/200/200"),
              ),
            ),
            Container(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("포스트 2",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    IconButton(
                        onPressed: () {
                          _tabController?.animateTo(2);
                        },
                        icon: Icon(Icons.arrow_forward_ios))
                  ],
                )),
            Expanded(child: SearchPostList()),
          ],
        ),

        /// 독서
        Column(
          children: [
            Container(
              child: Text("검색결과"),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) =>
                    Image.network("https://picsum.photos/id/${index}/200/200"),
              ),
            ),
          ],
        ),

        /// 포스트
        Column(
          children: [
            Container(
              child: Text("검색결과"),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
            ),
            Expanded(
              child: SearchPostList(),
            ),
          ],
        ),
      ],
    );
  }
}

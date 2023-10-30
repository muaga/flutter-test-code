import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/textformfield_search_bar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// 화면 최대 width
    double getScreenWidth(BuildContext context) {
      return MediaQuery.of(context).size.width;
    }

    /// 화면 최대 height
    double getScreenHeight(BuildContext context) {
      return MediaQuery.of(context).size.height;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: CustomScrollView(slivers: <Widget>[
          TextFormFieldSearchBar(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverTabBarViewDelegate(
              child: Container(
                  color: Theme.of(context).cardColor,
                  child: TabBar(
                    isScrollable: true,
                    tabs: <Widget>[
                      Tab(
                        child: Text("통합",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                      Tab(
                        child: Text("도서",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                      Tab(
                        child: Text("서재",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                    ],
                    controller: tabController,
                  )),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                SingleChildScrollView(
                  // 0번 탭 페이지
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 2,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // 무엇을 하고 싶다면 추가
                        },
                        child: Text("헤이"),
                      );
                    },
                  ),
                ),
                SingleChildScrollView(
                  // 1번 탭 페이지
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 2,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // 무엇을 하고 싶다면 추가
                        },
                        child: Text("헤이"),
                      );
                    },
                  ),
                ),
                SingleChildScrollView(
                  // 2번 탭 페이지
                  child: Column(
                    children: <Widget>[
                      // 다른 스크롤 가능한 내용을 추가
                      // 텍스트, 이미지, 리스트 등
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

class _SliverTabBarViewDelegate extends SliverPersistentHeaderDelegate {
  _SliverTabBarViewDelegate({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      child: child,
      elevation: 200,
    );
  }

  @override
  double get maxExtent => kTextTabBarHeight;

  @override
  double get minExtent => kTextTabBarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

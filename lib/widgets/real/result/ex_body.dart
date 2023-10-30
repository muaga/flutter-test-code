import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/search_result_tab_bar.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/search_result_tab_bar_view.dart';
import 'package:flutter_widget_test/widgets/real/widgetssss/textformfield_search_bar.dart';

class ExBody extends StatelessWidget {
  const ExBody({
    super.key,
    required this.searchText,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;
  final String searchText;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            TextFormFieldSearchBar(searchText: searchText),
            SearchResultTabBar(tabController: _tabController),
          ];
        },
        body: SearchResultTabBarView(tabController: _tabController));
  }
}

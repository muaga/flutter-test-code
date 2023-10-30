import 'package:flutter/material.dart';
import 'package:flutter_widget_test/widgets/real/result/ex_body.dart';

class SearchResultPage extends StatefulWidget {
  final String _searchText;
  const SearchResultPage({super.key, required this._searchText});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late String _searchText;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String _searchText = widget._searchText;
    return Scaffold(
      // 페이지 화면
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Profile"),
        centerTitle: true, // appbar의 title을 가운데로
      ),
      body: ExBody(tabController: _tabController, searchText: _searchText),
    );
  }
}

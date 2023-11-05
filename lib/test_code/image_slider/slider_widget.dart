import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/size.dart';
import 'package:flutter_widget_test/model/book.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_ranking/book_slider.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_ranking/slider_indicator.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({Key? key}) : super(key: key);

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Book> rankingBooks = [
    Book(
        id: 1,
        rankingId: 1,
        title: "트렌드 코리아 2024",
        writer: "김난도, 전미영, 최지혜, 이수진, 권정윤, 한다혜, 이준영, 이향은, 이혜원, 추예린, 전다현",
        titleIntro: "국내 최고 트렌드 전망서",
        intro: "청룡의 해, 2024년을 분석하다",
        bookPicUrl: "book8.png",
        stateIcon: Icons.arrow_drop_up),
    Book(
        id: 2,
        rankingId: 2,
        title: "퓨처셀프",
        writer: "벤저민 하디",
        bookPicUrl: "book8.png"),
    Book(
        id: 3,
        rankingId: 3,
        title: "시대예보:핵개인의 시대",
        writer: "송길영",
        bookPicUrl: "book8.png"),
    Book(
        id: 4,
        rankingId: 4,
        title: "설자은, 금성으로 돌아오다",
        writer: "정세랑",
        bookPicUrl: "book8.png",
        stateIcon: Icons.arrow_drop_down),
    Book(
        id: 5,
        rankingId: 5,
        title: "책으로 가는 문",
        writer: "미야자키 하야오",
        bookPicUrl: "book8.png",
        titleIntro: "상상력의 거장, 미야자키 하야오의 독서 에세이",
        intro: "그의 판타지 세계를 이끌어낸 50권의 책"),
    Book(
        id: 6,
        rankingId: 6,
        title: "로마 이야기",
        writer: "줌파 라히리",
        bookPicUrl: "book8.png",
        stateIcon: Icons.arrow_drop_up),
    Book(
        id: 7,
        rankingId: 7,
        title: "문과 남자의 과학 공부",
        writer: "유시민",
        bookPicUrl: "book8.png",
        titleIntro: "나는 무엇이고 왜 존재하며 어디로 가는가"),
    Book(
        id: 8,
        rankingId: 8,
        title: "아주 희미한 빛으로",
        writer: "최은영",
        bookPicUrl: "book8.png",
        stateIcon: Icons.arrow_drop_down),
    Book(
        id: 9,
        rankingId: 9,
        title: "역행자",
        writer: "자청",
        bookPicUrl: "book8.png",
        stateIcon: Icons.arrow_drop_up),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: gapLarge),
            BookSlider(
                controller: _controller,
                rankingBooks: rankingBooks,
                funPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            SizedBox(height: gapLarge),
            SliderIndicator(
                controller: _controller,
                current: _current,
                rankingBooks: rankingBooks),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text("Welcome to the carousel slide app",
                  style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  // Widget sliderWidget() {
  //   return CarouselSlider(
  //     carouselController: _controller,
  //     items: imageList.map(
  //       (imgLink) {
  //         return Builder(
  //           builder: (context) {
  //             return RankingBookForm();
  //           },
  //         );
  //       },
  //     ).toList(),
  //     options: CarouselOptions(
  //       height: 90,
  //       viewportFraction: 1.0,
  //       autoPlay: false,
  //       // autoPlayInterval: const Duration(seconds: 4),
  //       onPageChanged: (index, reason) {
  //         setState(() {
  //           _current = index;
  //           _controller.jumpToPage(index); // 페이지 인덱스 동기화
  //         });
  //       },
  //     ),
  //   );
  // }
}

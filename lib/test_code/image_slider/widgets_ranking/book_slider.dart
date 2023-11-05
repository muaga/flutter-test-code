import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/size.dart';
import 'package:flutter_widget_test/model/book.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_ranking/ranking_book_detail_form.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_ranking/ranking_book_form.dart';

class BookSlider extends StatelessWidget {
  BookSlider(
      {super.key,
      required this.controller,
      required this.rankingBooks,
      required this.funPageChanged});

  final CarouselController controller;
  List<Book> rankingBooks;
  final funPageChanged;

  @override
  Widget build(BuildContext context) {
    List<List<Book>> dividedBooks = [
      rankingBooks.sublist(0, 3), // 첫 번째 슬라이드에 표시할 책
      rankingBooks.sublist(3, 6),
      rankingBooks.sublist(6) // 두 번째 슬라이드에 표시할 책
    ];
    // sublist : List에서 새로운 List로 추출하는 데 사용 : sublist(start index, end? index(미포함))
    return CarouselSlider(
      carouselController: controller,
      items: dividedBooks.asMap().entries.map((entry) {
        final int index = entry.key;
        final List<Book> books = entry.value;
        return Builder(
          builder: (context) {
            if (index == 1) {
              // index가 1인 경우에 다른 위젯 반환
              return Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: gapSmall),
                  child: Column(
                    children: [
                      RankingBookForm(
                        id: books[0].id,
                        rankingId: books[0].rankingId,
                        writer: books[0].writer,
                        title: books[0].title,
                        bookPicUrl: books[0].bookPicUrl,
                        stateIcon: books[0].stateIcon,
                      ),
                      RankingDetailForm(
                        id: books[1].id,
                        rankingId: books[1].rankingId,
                        writer: books[1].writer,
                        title: books[1].title,
                        bookPicUrl: books[1].bookPicUrl,
                        stateIcon: books[1].stateIcon,
                        intro: books[1].intro,
                        titleIntro: books[1].titleIntro,
                      ),
                      RankingBookForm(
                        id: books[2].id,
                        rankingId: books[2].rankingId,
                        writer: books[2].writer,
                        title: books[2].title,
                        bookPicUrl: books[2].bookPicUrl,
                        stateIcon: books[2].stateIcon,
                      ),
                    ],
                  ),
                ),
              );
            } else {
              // index가 1이 아닌 경우 기존 위젯 반환
              return Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: gapSmall),
                  child: Column(
                    children: [
                      RankingDetailForm(
                        id: books[0].id,
                        rankingId: books[0].rankingId,
                        writer: books[0].writer,
                        title: books[0].title,
                        bookPicUrl: books[0].bookPicUrl,
                        stateIcon: books[0].stateIcon,
                        intro: books[0].intro,
                        titleIntro: books[0].titleIntro,
                      ),
                      RankingBookForm(
                        id: books[1].id,
                        rankingId: books[1].rankingId,
                        writer: books[1].writer,
                        title: books[1].title,
                        bookPicUrl: books[1].bookPicUrl,
                        stateIcon: books[1].stateIcon,
                      ),
                      RankingBookForm(
                        id: books[2].id,
                        rankingId: books[2].rankingId,
                        writer: books[2].writer,
                        title: books[2].title,
                        bookPicUrl: books[2].bookPicUrl,
                        stateIcon: books[2].stateIcon,
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 600,
        viewportFraction: 1.0,
        autoPlay: false,
        // autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: funPageChanged,
      ),
    );
  }
}

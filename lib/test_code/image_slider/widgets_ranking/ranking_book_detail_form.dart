import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/size.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_ranking/ranking_book_detail.dart';

class RankingDetailForm extends StatelessWidget {
  const RankingDetailForm(
      {super.key,
      required this.id,
      required this.rankingId,
      this.stateIcon,
      required this.title,
      required this.writer,
      required this.bookPicUrl,
      this.titleIntro,
      this.intro});

  final int id;
  final int rankingId;
  final IconData? stateIcon;
  final String title;
  final String writer;
  final String bookPicUrl;
  final String? titleIntro;
  final String? intro;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: gapSmall),
      child: Container(
        width: getScreenWidth(context) * 0.9,
        decoration: BoxDecoration(
          color: kBackWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kFontLightGray, // 그림자의 색상
              offset: Offset(1, 1), // 그림자의 위치 (x, y)
              blurRadius: 8.0, // 그림자의 흐림 정도
              spreadRadius: 2.0, // 그림자의 확산 정도
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(gapMedium),
          child: RankingBookDetail(
              id: id,
              rankingId: rankingId,
              title: title,
              writer: writer,
              bookPicUrl: bookPicUrl,
              titleIntro: titleIntro,
              intro: intro,
              stateIcon: stateIcon),
        ),
      ),
    );
  }
}

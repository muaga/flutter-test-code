import 'package:flutter/material.dart';

class Book {
  final int id;
  final int rankingId;
  final IconData? stateIcon;
  final String title;
  final String writer;
  final String? titleIntro;
  final String? intro;
  final String bookPicUrl;

  Book(
      {required this.id,
      required this.rankingId,
      this.stateIcon = Icons.remove,
      required this.title,
      required this.writer,
      this.titleIntro,
      this.intro,
      required this.bookPicUrl});
}

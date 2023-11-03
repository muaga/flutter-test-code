import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/font.dart';
import 'package:flutter_widget_test/constants/size.dart';

class TextSlider extends StatefulWidget {
  TextSlider(
      {super.key,
      required this.textController,
      required this.textList,
      required this.current});

  final CarouselController textController;
  final List<String> textList;
  int current;

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      // 해당 위젯의 위치를 조절하려고 stack-positioned를 썼으나,
      // CustomScrollWidget은 계속 width때문에 오류가 났다.
      // 해결방법은 해당 위젯에 직접 위치를 주는 것
      child: CarouselSlider(
        carouselController: widget.textController,
        items: widget.textList.map(
          (text) {
            return Builder(
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.01),
                        Colors.black.withOpacity(0.5)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: gapMain),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("HOT", style: body3()),
                          decoration: BoxDecoration(
                              color: kBackWhite,
                              borderRadius: BorderRadius.circular(30)),
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Text(
                            text,
                            style: subTitle1(mColor: kFontWhite),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ).toList(),
        options: CarouselOptions(
          height: 90,
          viewportFraction: 1.0,
          autoPlay: true,
          scrollPhysics: NeverScrollableScrollPhysics(),
          // 슬라이드 비활성화
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayInterval: const Duration(seconds: 6),
          enlargeCenterPage: false,
          onPageChanged: (index, reason) {
            setState(() {
              widget.current = index;
            });
          },
        ),
      ),
    );
  }
}

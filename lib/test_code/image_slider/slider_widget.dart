import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/font.dart';
import 'package:flutter_widget_test/constants/size.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({Key? key}) : super(key: key);

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List imageList = [
    "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/06/19/20/13/sunset-815270_1280.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slide'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                sliderWidget(),
                // textSliderWidget(),
              ],
            ),
          ),
          SizedBox(height: gapLarge),
          sliderIndicator(),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Welcome to the carousel slide app",
                style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: imageList.map(
        (imgLink) {
          return Builder(
            builder: (context) {
              return Container(
                width: getScreenWidth(context) * 0.9,
                decoration: BoxDecoration(
                  color: kBackWhite,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kFontLightGray, // 그림자의 색상
                      offset: Offset(0, 1), // 그림자의 위치 (x, y)
                      blurRadius: 5.0, // 그림자의 흐림 정도
                      spreadRadius: 2.0, // 그림자의 확산 정도
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(gapMain),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: getScreenWidth(context) * 0.15,
                            height: getScreenWidth(context) * 0.15,
                            decoration: BoxDecoration(
                                border: Border.all(color: kBackLight2Gray),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/book8.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            children: [
                              Text("1", style: title1()),
                              Icon(Icons.arrow_drop_up),
                            ],
                          ),
                          Container(
                            width: getScreenWidth(context) * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("트렌드 코리아 2024",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1),
                                Text(
                                    "김난도, 전미영, 최지혜, 이수진, 권정윤, 한다혜, 이준영, 이향은, 이혜원, 추예린, 전다현",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1),
                              ],
                            ),
                          )
                        ],
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
        height: 300,
        viewportFraction: 1.0,
        autoPlay: false,
        // autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: getScreenWidth(context) * 0.15,
              height: 2,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color:
                    Colors.black.withOpacity(_current == entry.key ? 0.9 : 0.1),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

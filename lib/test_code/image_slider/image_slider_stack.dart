import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets/image_slider.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets/text_slider.dart';

class MilliePage extends StatefulWidget {
  const MilliePage({Key? key}) : super(key: key);

  @override
  State<MilliePage> createState() => _MilliePageState();
}

class _MilliePageState extends State<MilliePage> {
  int current = 0;
  final CarouselController _imageController = CarouselController();
  final CarouselController _textcCntroller = CarouselController();

  List<String> imageList = [
    "ad_moon.jpg",
    "ad_november.jpg",
    "ad_higasino_geigo.jpg",
    "ad_story_1.jpg",
    "ad_story_2.jpg",
    "ad_story_3.jpg"
  ];

  List<String> textList = [
    "내 딸이 달에게 납치되었다?\n상상력을 자극하는 '달의 아이' 공개",
    "11월에는 어떤 책을 읽지?\n추천 맛집! 에디터의 선택",
    "히가시노 게이고 뭐부터 읽지?\n나의 소설 취향 소설보기",
    "입대전 마지막으로 떠난 여행\n난 각성자가 되었다",
    "조직에 배신당한 히트맨\n암살 당해 죽고 회귀했다",
    "뚱보 김병장이 재능 만랩\n엔터테이너로 거듭난다"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slide'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: Stack(
                children: [
                  ImageSlider(
                      imageController: _imageController,
                      imageList: imageList,
                      current: current),
                  TextSlider(
                      textController: _textcCntroller,
                      textList: textList,
                      current: current)
                  // sliderIndicator(),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text("Welcome to the carousel slide app",
                  style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
//   Widget sliderIndicator() {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: imageList.asMap().entries.map((entry) {
//           return GestureDetector(
//             onTap: () => _controller.animateToPage(entry.key),
//             child: Container(
//               width: 12,
//               height: 12,
//               margin:
//                   const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color:
//                     Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4),
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

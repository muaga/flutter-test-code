import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/model/event.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_event/event_slider.dart';

class SliverWidgetTest extends StatefulWidget {
  const SliverWidgetTest({Key? key}) : super(key: key);

  @override
  State<SliverWidgetTest> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidgetTest> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 16.0),
            EventSlider(
              controller: _controller,
              events: events,
              funPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget sliderWidget(int sliderIndex) {
    return CarouselSlider(
      carouselController: _controller,
      items: List.generate(4, (index) {
        return Builder(
          builder: (context) {
            return Container(
              child: Center(
                child: Text(
                  'Slider $sliderIndex - Item $index',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          },
        );
      }),
      options: CarouselOptions(
        height: 200,
        viewportFraction: 0.8,
        autoPlay: false,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }
}

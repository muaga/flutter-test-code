import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/font.dart';
import 'package:flutter_widget_test/constants/size.dart';
import 'package:flutter_widget_test/model/event.dart';
import 'package:flutter_widget_test/test_code/image_slider/widgets_event/web_view_page.dart';

class EventSlider extends StatelessWidget {
  EventSlider(
      {super.key,
      required this.controller,
      required this.events,
      required this.funPageChanged});

  final CarouselController controller;
  List<Event> events;
  final funPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      items: events.map((event) {
        return Builder(
          builder: (context) {
            return EventSliderForm(event: event);
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 120,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 6),
        autoPlayAnimationDuration: Duration(seconds: 2),
        onPageChanged: funPageChanged,
      ),
    );
  }
}

class EventSliderForm extends StatelessWidget {
  EventSliderForm({super.key, required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebViewPage(url: event.url)));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: gapSmall),
        child: Container(
          width: getScreenWidth(context) * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: event.backColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(gapMain),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      event.title,
                      style: subTitle2(mColor: kFontWhite),
                    ),
                    Text(
                      event.content,
                      style: body4(
                          mColor: kFontWhite, mFontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage("assets/${event.picUrl}"),
                height: 100,
                width: 100,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/size.dart';

class SixthAppbar extends StatelessWidget {
  const SixthAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    // sliverAppBar에 이미지를 BoxFit.cover해도 아래에 공간이 조금 남는다.
    // 이때 제일 윗 부분까지 사이즈를 재서 SliverAppBar의 height를 적어주면 된다.
    // => kToolbarHeight
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("test"),
            expandedHeight: getScreenWidth(context),
            backgroundColor: Colors.white,
            pinned: true,
            primary: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SizedBox(
                height: getScreenWidth(context) + kToolbarHeight,
                width: getScreenWidth(context),
                // ),
                child: ExtendedImage(
                    image: AssetImage("assets/book8.png"), fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                  height: 100,
                  color: Colors.accents[index % Colors.accents.length]);
            },
          )),
        ],
      ),
    );
  }
}

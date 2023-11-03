import 'package:flutter/material.dart';

class FourthAppbar extends StatelessWidget {
  const FourthAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 제일 기본 방식
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      // 여기에 그냥 "color = 투명"이 되지 않는다.
      // 왜냐하면 appbar랑 pageView 영역이 아예 다르기 때문
      // extendBodyBehindAppBar: true 이거를 써야 "투명"이 가능
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Image.network(
            "https://picsum.photos/id/${index + 50}/200/300",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

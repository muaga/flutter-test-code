import 'package:flutter/material.dart';

// - PageView로 화면을 넘기면 다음 이미지를 볼 수 있도록 하기
// - image를 배경으로 둔 appbar를 전체 화면 크기만큼 늘리기

class SecondAppbar extends StatelessWidget {
  const SecondAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // appbar : AppBar()를 쓰면 image위에 appbar가 생긴다.
      // 그래서 쓰지말고, SliverAppBar를 만들어야 한다.
      slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height,
          // MediaQuery에 핸드폰 사이즈(화면 사이즈=context)를 사용해서
          // appbar의 넓이를 화면 모두에 차지하게 한다.
          leading: Icon(Icons.menu),
          title: Text("Around"),
          flexibleSpace:
              // PageView : 옆으로 넘기면 새로운 View가 나오는 위젯
              // builder = 아이템 갯수만큼 무언가를 해준다.
              PageView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/id/${index + 50}/200/300",
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ],
    );
  }
}

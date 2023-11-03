import 'package:flutter/material.dart';

// second_appbar의 다른 버전
// - pageView를 맨 밑에 깔고, appbar 만들기
// - pageView에 텍스트를 넣고 싶을 때 -> 가능한 이유 : 화면 전체가 appbar가 아니기 때문

class ThirdAppbar extends StatelessWidget {
  const ThirdAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://picsum.photos/id/${index + 50}/200/300"),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            // appbar의 배경을 투명으로 줘서, image가 보일 수 있도록 한다.
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Text("Around"),
              leading: Icon(Icons.menu),
            ),
            body: Center(
              child: Text(
                "page ${index}",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );
  }
}

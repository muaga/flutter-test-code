import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';
import 'package:flutter_widget_test/constants/size.dart';

class ReadingPage extends StatelessWidget {
  const ReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    String content =
        "3. 인간 행동 잉면에는 언제나 왜 또는 목표가 있다. 인간의 모든 활동에 목적이나 이유가 있는 것이다. 따라서 자신이 어떤 목적이나 목표를 선택하는 지 명확하게 의식해야 한다. 그러면 방법은 저절로 나타나기 시작한다. 행동은 목적이나 목표를 따라가게 마련이기 때문이다.\r\n" + //
            ": 집착의 법칙과 비슷한 부분이 있다. 집착(대상)의 목적(이유)를 설정하고 목표(방법)을 세우고 달성해야 한다. \r\n" + //
            "지금 오늘의 내가 생각한 목적과 목표가 분명 작년과는 조금 다르다. 방향과 대상은 같지만 이유가 달라졌고, 방법에도 약";
    String content2 = "가가가가가가가가가가가가가가";
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70 + 24, horizontal: gapXlarge),
        child: Container(
          height: getScreenHeight(context),
          width: getScreenWidth(context),
          color: kBackGray,
          child: Text("${content}",
              style:

                  /// 한글, 영어 14자 ~ 28자, 18줄
                  TextStyle(fontFamily: 'D2Coding', fontSize: 23, height: 1.4)),
        ),
      ),
    );
  }
}

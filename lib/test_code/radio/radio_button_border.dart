import 'package:flutter/material.dart';
import 'package:flutter_widget_test/constants/color.dart';

class RadioBottonBorder extends StatefulWidget {
  const RadioBottonBorder({super.key});

  @override
  State<RadioBottonBorder> createState() => _RadioBottonBorderState();
}

class _RadioBottonBorderState extends State<RadioBottonBorder> {
  List<String> test = ["month", "year"];
  String? select;
  Map<int, BoxDecoration> boxDecorations = {
    0: BoxDecoration(boxShadow: [
      BoxShadow(
          color: kBackLight2Gray, // 그림자 색상
          offset: Offset(0, 1), // 그림자의 위치 (X, Y)
          blurRadius: 5.0, // 그림자의 흐림 정도
          spreadRadius: 1.0 // 그림자의 확산 정도
          ),
    ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
    1: BoxDecoration(boxShadow: [
      BoxShadow(
          color: kBackLight2Gray, // 그림자 색상
          offset: Offset(0, 1), // 그림자의 위치 (X, Y)
          blurRadius: 5.0, // 그림자의 흐림 정도
          spreadRadius: 1.0 // 그림자의 확산 정도
          ),
    ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
  };

  BoxDecoration decoBox = BoxDecoration(boxShadow: [
    BoxShadow(
        color: kBackLight2Gray, // 그림자 색상
        offset: Offset(0, 1), // 그림자의 위치 (X, Y)
        blurRadius: 5.0, // 그림자의 흐림 정도
        spreadRadius: 1.0 // 그림자의 확산 정도
        ),
  ], color: Colors.white, borderRadius: BorderRadius.circular(15));

  BoxDecoration transDecoBox = BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: kBackLight2Gray, // 그림자 색상
            offset: Offset(0, 1), // 그림자의 위치 (X, Y)
            blurRadius: 5.0, // 그림자의 흐림 정도
            spreadRadius: 4.0 // 그림자의 확산 정도
            ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border:
          Border.all(color: kPrimaryColor, style: BorderStyle.solid, width: 6));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: boxDecorations[0],
                child: Column(
                  children: [
                    Radio(
                      activeColor: kPointColor,
                      value: test[0],
                      groupValue: select,
                      onChanged: (value) {
                        setState(() {
                          select = value!;
                          boxDecorations[1] = decoBox;
                          boxDecorations[0] = transDecoBox;
                        });
                      },
                    ),
                    Text(test[0], style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: boxDecorations[1],
                child: Column(
                  children: [
                    Radio(
                      activeColor: kPointColor,
                      value: test[1],
                      groupValue: select,
                      onChanged: (value) {
                        setState(() {
                          select = value!;
                          boxDecorations[0] = decoBox;
                          boxDecorations[1] = transDecoBox;
                        });
                      },
                    ),
                    Text(test[1], style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

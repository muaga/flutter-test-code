import 'package:flutter/material.dart';

class SearchPostList extends StatelessWidget {
  const SearchPostList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/book8.png"),
                      colorFilter: ColorFilter.mode(
                          Colors.white60.withOpacity(0.8), BlendMode.srcATop),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // 그림자의 색상
                      offset: Offset(0, 1), // 그림자의 위치 (x, y)
                      blurRadius: 5.0, // 그림자의 흐림 정도
                      spreadRadius: 1.0, // 그림자의 확산 정도
                    )
                  ],
                ),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Image(image: AssetImage("assets/book8.png"))),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // 그림자의 색상
                      offset: Offset(0, 1), // 그림자의 위치 (x, y)
                      blurRadius: 5.0, // 그림자의 흐림 정도
                      spreadRadius: 1.0, // 그림자의 확산 정도
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("나를 사랑하지 못하는 나에게 / 안드레아스 크누프",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: 5),
                            Text(
                                "사랑은 원래 어려운 거야. 이런 말을 주변에서 꼭 한 번 정도는 듣는다. 그래서 사랑이 어렵다는 건 알고 있다. 그런데 아무도 '나'를 사랑하는 게 어렵다는 말을 해주지 않았다.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          color: Colors.black12,
                          height: 1),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/book8.png")),
                        title: Text("Yuns의 서재"),
                        titleTextStyle:
                            TextStyle(color: Colors.black, fontSize: 14),
                        subtitle: Text("2019.09.23"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
      },
    );
  }
}

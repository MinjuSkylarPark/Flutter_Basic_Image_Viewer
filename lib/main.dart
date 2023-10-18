import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//MyApp class선언 StatelessWidget 클래스 확장및앱의 루트위젯역할을함
class MyApp extends StatelessWidget {
  //빌드메서드 override해서 위젯생성
  @override
  Widget build(BuildContext context) {
    //상단에 오버라이딩 시키려고 만든세서드는 하단의 MaterialApp을 반환한다
    //여기서부터 앱의 기본적인 구성정의
    return MaterialApp(
      //MaterialApp위젯 생성후에 내부에 Scaffold만듦
      //Scaffold는 앱 기본디자인틀 제공
      home: Scaffold(
        //appBar에는 AppBar위젯추가 - 여기에서 앱 타이틀이 정해진다
        appBar: AppBar(title: Text('The members of Kitty leftwing party')),
        //위젯추가할 때는 내부에 'body'가 포함된다
        body: ImageListView(),
      ),
    );
  }
}

//ImageListView class선언 StatelessWidge클래스로 확장되며
//이미지 목록에 표시
class ImageListView extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/cat.jpg',
    'assets/cat7.jpg',
    'assets/funnycat.jpeg',
  ];
  //buid메서드 오버라이드해서 - 이미지 목록표시하는 위젯생성
  @override
  //
  Widget build(BuildContext context) {
    //스크롤 가능한 목록생성 기본은 수평으로 생성하는데
    //vertical로 바꿔서 수직으로 왔다갔다하면서 보기쉽게한다
    return ListView.builder(
      scrollDirection: Axis.vertical,
      //카운트는 목록의 항목수로 이미지 경로 목록길이로 생성
      itemCount: imagePaths.length,
      //아이템 빌더는 콜백함수를 써서 목록의 각 항목을 빌드한다
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          //각각의 이미지를 image.asset위에 씌우고 padding을써서
          //이미지 사이의 간격을 조절한다
          child: Image.asset(imagePaths[index]),
        );
      },
    );
  }
}

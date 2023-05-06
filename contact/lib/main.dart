import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 앱 메인 페이지 생성
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 플러터는 폰 바탕화면 처럼 위젯들을 짜집기하는 식으로 디자인함
        // 필수 위젯들을 배울거임

        // 글자 위젯
        // home: Text('')

        // 아이콘 위젯
        // home: Icon(Icons.star)

        // 이미지 위젯
        // (pubspec.yaml에 이미지가 존재하는 경로 등록하면 편함)
        // home: Image.asset('경로')
        // home: Image.asset('Brilliant.jpg')

        // 박스 위젯(Container 또는 SizedBox)
        // home: Container(width: 50,height: 50,color: Colors.blue)
        // 플러터에서 길이의 단위는 LP라고 한다.(대충 1.2cm)
        // 위처럼 짜면 얘가 어디부터 채워야할지 몰라서 그냥 다 채움
        // 어디부터 채워야할지는 부모가 결정함

        // 다음과 같이 내 자식 위젯의 기준점을 중앙으로 설정하는 Center를 쓰면 됨
        // home: Center(
        //   child: Container(width: 50, height: 50, color: Colors.blue),
        // )

        // Scaffold 위젯(앱을 상중하로 나눠줌)
        home: Scaffold(
      // 상
      appBar: AppBar(
          // TextStyle로 Text 꾸미기 가능
          title: Text(
        '앱임',
        style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 10, 240, 144),
          letterSpacing: 3,
          fontWeight: FontWeight.w800,
        ),
      )),

      // 중
      // ListView로 스크롤바 생성 가능(Column과 기능 동일)
      // 메모리 절약도 쌉가능
      body: ListView(
        children: [
          Box(),
          Box(),
          Box(),
          Box(),
        ],
      ),

      // bottomNavigationBar: BottomAppBar(
      //     // width, height, child만 필요한 박스는 SizedBox를 씀
      //     // SizedBox가 Container보다 가벼움
      //     child: SizedBox(
      //         height: 60,
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Icon(Icons.phone),
      //             Icon(Icons.message),
      //             Icon(Icons.contact_page),
      //           ],
      //         ))), //하
    ));
  }
}

// 이런 식으로 자주 쓰이는 위젯을 커스텀위젯으로 클래스 선언할 수 있다.
class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      // Align으로 정렬 설정 가능
      // alignment: Alignment.topCenter,
      child: Container(
        // Row: 위젯들 가로로 배치
        // Column: 위젯들 가로로 배치

        // 주축 정렬. css의 flex와 유사
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        // 교차축 정렬
        // crossAxisAlignment: CrossAxisAlignment.center,

        // 위젯 여러개 배치
        // children: [
        //   // Icon(Icons.star),
        //   // Icon(Icons.star),
        //   // Icon(Icons.star),
        // ]

        // width: 50,
        // 박스를 부모 박스 내에서 가로로 꽉차게 하고 싶다면 아래 설정하면 됨
        // width: double.infinity,
        // height: 50,
        margin: EdgeInsets.all(20), // 모든 방향
        // padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(20, 20, 0, 0), // 방향별 개별 설정

        // 여러 잡다한 디자인 요소는 decoration에 집어넣어야 함
        // decoration: BoxDecoration(
        //   color: Colors.blue,
        //   border: Border.all(color: Colors.black),
        //   // borderRadius: BorderRadius.circular(30),
        // ),

        // 텍스트 버튼
        child: ElevatedButton(
          child: Text(
            'hi',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

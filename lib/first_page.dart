import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_navigator_app/main.dart';
import 'package:flutter_navigator_app/second_page.dart';

// 첫 페이지
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('First')),
        body: RaisedButton(
          child: Text('다음페이지'),
          onPressed: () async {
            final person = Person('홍길동', 20);
            /*
            final result = await Navigator.push(
                // push() : Future타입을 반환하며
                // Future는 미래에 값이 들어올 것을 나타내는 클래스
                // 1)메서드 앞에 await추가 2)메서드인수와 함수본문 사이에 async추가
                context,
                MaterialPageRoute(
                    builder: (context) => SecondPage(person: person)));
            */
            // 라우터 사용시
            final result = await Navigator.pushNamed(context, '/second');
            print(result);
          },
        ));
  }
}

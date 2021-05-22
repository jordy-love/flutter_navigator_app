import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_navigator_app/main.dart';

// 두번째 페이지
class SecondPage extends StatelessWidget {
  final Person person;

  //SecondPage({@required this.person}); // 필수입력인수
  SecondPage({this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second')),
        body: RaisedButton(
          child: Text('이전페이지'),
          onPressed: () {
            Navigator.pop(context, 'ok');
          },
        )
    );
  }
}
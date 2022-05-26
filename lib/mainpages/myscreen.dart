import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("내가 올린거 보여주는 스크린입니다."),
    );
  }
}

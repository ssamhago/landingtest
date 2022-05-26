import 'package:flutter/material.dart';

class MyLikeScreen extends StatefulWidget {

  @override
  State<MyLikeScreen> createState() => _MyLikeScreenState();
}

class _MyLikeScreenState extends State<MyLikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("좋아요 누른 컨텐츠만 보여주는 스크린입니다."),
    );
  }
}

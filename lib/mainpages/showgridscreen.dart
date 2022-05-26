import 'package:flutter/material.dart';

class ShowGridScreen extends StatefulWidget {

  @override
  State<ShowGridScreen> createState() => _ShowGridScreenState();
}

class _ShowGridScreenState extends State<ShowGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("그리드뷰로 보여주는 스크린입니다."),
    );
  }
}

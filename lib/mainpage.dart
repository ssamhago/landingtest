import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landingtest/mainpages/hoemscreen.dart';
import 'package:landingtest/mainpages/mylikescreen.dart';
import 'package:landingtest/mainpages/myscreen.dart';
import 'package:landingtest/mainpages/showgridscreen.dart';

class MainPage extends StatefulWidget {


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex=0;
  List<BottomNavigationBarItem> bottemItems=[
    BottomNavigationBarItem(
      label: '홈',
      icon: Icon(Icons.home_filled),
    ),
    const BottomNavigationBarItem(
      label: '모아보기',
      icon: Icon(Icons.grid_view),
    ),
    BottomNavigationBarItem(
      label: '내가 라이크 누른 컨텐츠',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '내 페이지',
      icon: Icon(Icons.account_circle),
    ),
  ];

  List pages=[
    HomeScreen(),
    ShowGridScreen(),
    MyLikeScreen(),
    MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lara Poupee', style: TextStyle(fontFamily: 'SingleDay',fontSize: 40, color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, //Bar 배경색
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottemItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}

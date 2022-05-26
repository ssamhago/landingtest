import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({required this.number});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {

  late int pageLength;

  int currentPageIndex = 0;

  PageController _controller = PageController();

  List<String> testImageList = [
    'https://www.larapoupee.com/web/upload/dcube/main/paper5.jpg',
    'https://larapoupee.com/web/product/big/202205/e48a23a0927cff295e6b220606d82b61.jpg',
    'https://larapoupee.com/web/product/big/202204/9a9fa9a78ebdd9fbd70fd90c3feada4e.jpg',
    'https://larapoupee.com/web/product/big/202205/7b6e499956022d972ee2be99f8b31dcc.jpg',
    'https://larapoupee.com/web/product/big/202201/60776a6366ac7688feb954ae208ce795.jpg'
  ];

  List testint = [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

  double initRatio = 0.5;

  @override
  void initState() {
    pageLength = 3+Random().nextInt(5);

    initRatio = testint[Random().nextInt(16)]*0.1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
                    ),
                    SizedBox(width: 5),
                    Text('100sucoding'),
                  ],
                ),

                Icon(Icons.subject),
              ],
            ),
          ),

          AspectRatio(
            aspectRatio: initRatio,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                PageView.builder(
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      child: Image.network(testImageList[Random().nextInt(5)],fit: BoxFit.cover,),
                    );
                  },
                  itemCount: pageLength,
                  controller: _controller,
                  onPageChanged: (value){
                    setState(() {
                      currentPageIndex = value;
                    });
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(500)
                  ),

                  child: Text('${currentPageIndex+1}/$pageLength', style: TextStyle(color: Colors.white),),
                )
              ],
            )
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        SizedBox(width: 7,),
                        Icon(Icons.chat_outlined),
                        SizedBox(width: 7,),
                        Icon(Icons.send)
                      ],
                    ),
                    Icon(Icons.bookmark_border)
                  ],
                ),
                ScrollingPageIndicator(
                        dotColor: Colors.grey,
                        dotSelectedColor: Colors.deepPurple,
                        dotSize: 6,
                        dotSelectedSize: 8,
                        dotSpacing: 12,
                        controller: _controller,
                        itemCount: pageLength,
                        orientation: Axis.horizontal
                ),
              ]
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Center(child: Text('좋아요 칸')),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Center(child: Text('포스트 설명 칸')),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.orange,
            child: Center(child: Text('댓글 칸')),
          ),
        ]
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('pageLength', pageLength));
  }
}

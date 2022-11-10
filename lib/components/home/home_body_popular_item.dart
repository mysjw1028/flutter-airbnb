import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);
//자바랑 다른게 this.id 하면 바로 넣어준다
//const 제일 초기에 한번만 뜨는거
  final id;
  final popularList = [
    "p1.jpg",
    "p2.jpg",
    "p3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    //전체 1000이라면 popularItemWidth = 700/3 3-5 = 228
    double popularItemWidth = getBodywidth(context) / 3 - 5; //-5를 안 하면 딱붙어있다.

    return Container(
      color: Colors.green,
      height: 200,
      width: popularItemWidth,
      constraints: BoxConstraints(
        //나중에 지웠다 추가했다 해보기
        minWidth: 320, //(최소값)320이하로 줄어드지 않는다.
      ),
      child: Column(
        children: [
          _buildPopularItemImage(),
          _buildPopularItemStar(),
          _buildPopularItemComment(),
          _buildPopularItemUserInfo(),
        ],
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return SizedBox();
  }

  Widget _buildPopularItemStar() {
    return SizedBox();
  }

  Widget _buildPopularItemComment() {
    return SizedBox();
  }

  Widget _buildPopularItemUserInfo() {
    return SizedBox();
  }
}

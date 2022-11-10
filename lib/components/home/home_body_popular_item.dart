import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

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
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요 :) 위치도 완전 좋아용 다들 여기 살고 싶다고 ㅋㅋㅋㅋㅋㅋㅋ 화장실도 3개에요!!! 5명이서 씻는것도 전혀 불편함없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpg"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            Text("한국"),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

import '../common/basic_button.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        // 나중에 패딩 주기
        children: [
          _bulidBannerImage(),
          _bulidBannerCaption(),
        ],
      ),
    );
  }

  Widget _bulidBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }

  Widget _bulidBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 275,
            ),
            child: Text(
              "이제, 여행은 가까운 곳에서",
              style: h4(mColor: Colors.white),
            ),
          ),
          SizedBox(height: gap_m),
          Container(
            constraints: BoxConstraints(
              maxWidth: 260,
            ),
            child: Text("새로운 공간에 머물러 보세요. ",
                style: subtitle1(mColor: Colors.white)),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 280,
            ),
            child: Text("살아보기, 출장, 여행등 다양한 목적에 맞는 숙소를 찾아보세요",
                style: subtitle1(mColor: Colors.white)),
          ),
          SizedBox(height: gap_m),
          SizedBox(
            width: 170,
            child: BasicButton(text: "가까운 여행지 둘러보기"),
          ),
        ],
      ),
    );
  }
}

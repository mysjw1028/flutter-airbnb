//간격 마진이랑 패딩때 같이 쓸려고 -구분안하고 gap
import 'package:flutter/material.dart';

const double gap_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

//헤더 높이
const double header_height = 620;

//mediaQuery -> 반응형 / 화면사이즈를 알게 해주는거
//앱도 같이 할거라서 퍼센테이지로 잡앗다
double getBodywidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.7;
}

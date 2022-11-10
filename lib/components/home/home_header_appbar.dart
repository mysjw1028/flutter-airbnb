import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

import '../common/Logo.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Logo(),
        SizedBox(width: gap_s),
        Text("RoomOfAll", style: h5(mColor: Colors.white)),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입", style: subtitle1(mColor: Colors.white)),
        SizedBox(
          width: gap_m,
        ),
        Text("로그인", style: subtitle1(mColor: Colors.white)),
      ],
    );
  }
}

//메서드는 안에 함수는 밖에 넣기

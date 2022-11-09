import 'package:flutter/material.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildAppBarLogo(),
        Spacer(),
        _buildAppBarMenu(),
      ],
    );
  }

  Widget _buildAppBarLogo() {
    return SizedBox();
  }

  Widget _buildAppBarMenu() {
    return SizedBox();
  }
} //메서드는 안에 함수는 밖에 넣기

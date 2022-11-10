import 'package:flutter/material.dart';

class HomebodyBanner extends StatelessWidget {
  const HomebodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //나중에 패딩주기
      children: [
        _buildBannerImage(),
        _buildBannerCaption(),
      ],
    );
  }

  Widget _buildBannerImage() {
    return Container(
      height: 100,
      color: Colors.cyan,
    );
  }

  Widget _buildBannerCaption() {
    return Container(
      height: 100,
      color: Colors.pink,
    );
  }
}

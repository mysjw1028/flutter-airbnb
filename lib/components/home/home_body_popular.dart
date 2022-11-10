import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPopulartTitle(),
        _buildPopularList(),
      ],
    );
  }

  Widget _buildPopulartTitle() {
    return SizedBox();
  }

  Widget _buildPopularList() {
    //나중에 row로 변경해보기
    //나중에 빼기
    return Container(
      color: Colors.red,
      child: Wrap(
        children: [
          HomeBodyPopularItem(id: 0),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 1),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 2),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

//하얀박스안 필드
class CommonFormField extends StatelessWidget {
  final prfixText;
  final hintText;

  const CommonFormField(
      {required this.prfixText, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 30, left: 20, bottom: 10),
            hintText: "${hintText}",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
          ),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              "${prfixText}",
              style: overLine(),
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BarisIcon extends StatelessWidget {
  const BarisIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.accessibility,
          size: 50,
        ),
        Icon(
          Icons.timer,
          size: 50,
        ),
        Icon(
          Icons.phone_android,
          size: 50,
        ),
        Icon(
          Icons.phone_iphone,
          size: 50,
        ),
      ],
    );
  }
}

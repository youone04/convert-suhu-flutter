import 'package:flutter/material.dart';

class BarisAlamat extends StatelessWidget {
  const BarisAlamat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Jalan alan"),
        Text("+6285626337"),
      ],
    );
  }
}

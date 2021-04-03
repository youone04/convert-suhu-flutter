import 'package:flutter/material.dart';

class BarisNama extends StatelessWidget {
  const BarisNama({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.account_circle,
            size: 50,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Yudi Gunawan",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("Front-end develper")
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ResultSuhu extends StatelessWidget {
  const ResultSuhu({
    Key key,
    // @required this.result,
    // @required this.title,
    @required double result,
  })  : _result = result,
        super(key: key);

  final double _result;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "Hasil Konversi",
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              _result.toStringAsFixed(2),
              style: TextStyle(fontSize: 36),
            ),
          ),
        ],
      ),
    );
  }
}

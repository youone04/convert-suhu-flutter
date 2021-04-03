import 'package:flutter/material.dart';

class InputSuhu extends StatelessWidget {
  const InputSuhu({
    Key key,
    @required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukan Nilai Suhu"),
      keyboardType: TextInputType.number,
      // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: etInput,
    );
  }
}

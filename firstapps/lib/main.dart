import 'package:firstapps/widgets/barisIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/Suhu/ButtonKonversi.dart';
import 'widgets/Suhu/ResultSuhu.dart';
import 'widgets/Suhu/inputSuhu.dart';
import 'widgets/barisAlamat.dart';
import 'widgets/barisNama.dart';

void main() {
  runApp(MyApp());
}
// kolom itu kebawawah
//baris itu kesamping

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = TextEditingController();
  // state
  double inputUser = 0;
  double fahreinheit = 0;
  double kelvin = 0;
  double reamur = 0;
  String _selectDropdown = "Kelvin";
  double _result = 0;

  konversi() {
    // setSTate
    setState(() {
      inputUser = double.parse(etInput.text);
      switch (_selectDropdown) {
        case "Kelvin":
          {
            _result = inputUser + 273;
            // add sama dengan push di js
            listHasil.add("konversi dari : " +
                "$inputUser" +
                " ke " +
                "$_result" +
                " kelvin");
          }
          break;
        case "Reamur":
          {
            _result = inputUser * 4 / 5;
            listHasil.add("konversi dari : " +
                "$inputUser" +
                " ke " +
                "$_result" +
                " Reamur");
          }
          break;
        case "Farenheit":
          {
            _result = inputUser * 9 / 5;
            listHasil.add("Konversi dari : " +
                "$inputUser" +
                " ke " +
                "$_result" +
                " Farenheit");
          }
      }

      // kelvin = 4 / 5 * inputUser;
      // fahreinheit = 9 / 5 * inputUser;
      // reamur = inputUser + 273;
    });
  }

  _ondropDownChanged(String value) {
    setState(() {
      _selectDropdown = value;
      switch (_selectDropdown) {
        case "Kelvin":
          {
            _result = inputUser + 273;
            // add sama dengan push di js
            listHasil.add("konversi dari : " +
                "$inputUser" +
                " ke " +
                "$_result" +
                " kelvin");
          }
          break;
        case "Reamur":
          {
            _result = inputUser * 4 / 5;
            listHasil.add("konversi dari : " +
                "$inputUser" +
                " ke " +
                "$_result" +
                " Reamur");
          }
          break;
        case "Farenheit":
          {
            _result = inputUser * 9 / 5;
            listHasil.add("Konversi dari : " +
                "$inputUser" +
                " ke " +
                "$_result" +
                " Farenheit");
          }
      }
    });
  }

  var listSatuanSuhu = ["Kelvin", "Reamur", "Farenheit"];
  // variable array kosong yang akan di push
  List<String> listHasil = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Converter"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              InputSuhu(etInput: etInput),
              // Dropdown,
              DropdownButton(
                // dengan map

                items: listSatuanSuhu.map((String v) {
                  return DropdownMenuItem(child: Text(v), value: v);
                }).toList(),

                // tanpa map
                // items: [
                //   DropdownMenuItem(
                //     child: Text("Kelivin"),
                //     value: "kelvin",
                //   ),
                //   DropdownMenuItem(
                //     child: Text("Reamur"),
                //     value: "reamur",
                //   ),
                // ],

                value: _selectDropdown,
                onChanged: _ondropDownChanged,
                isExpanded: true,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ResultSuhu(
                      result: _result,
                      // : "Kelvin",
                    ),
                    // ResultSuhu(
                    //   result: fahreinheit,
                    //   title: "Farenheit",
                    // ),
                    // ResultSuhu(
                    //   result: reamur,
                    //   title: "Reamur",
                    // ),
                  ],
                ),
              ),
              ButtonKonversi(
                konversi: konversi,
              ),
              // with map
              // Expanded(
              //   child: ListView(
              //     children: listHasil.map((String value) {
              //       return Container(
              //         child: Text(value),
              //       );
              //     }).toList(),
              //   ),
              // ),

              // with builder
              Expanded(
                child: ListView.builder(
                  itemCount: listHasil.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(listHasil[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(LogInScreen());

class LogInScreen extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: Text(
                    "Введите свой номер телефона",
                    textAlign: TextAlign.center,
                    style: _sizeTextBlack,
                  ),
                  padding: new EdgeInsets.only(top: 10),
                ),
                new Container(
                  child: DropdownExample(),
                  width: 300.0,
                  padding: new EdgeInsets.only(top: 50),
                ),
                new Container(
                  child: new TextFormField(
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                        labelText: "+XXX XXX XX-XX-XX",
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent,width: 5),
                      borderRadius: BorderRadius.circular(10))
                    ),
                    style: _sizeTextBlack,
                    keyboardType: TextInputType.phone,
                  ),
                  width: 1000.0,
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new Container(
                  padding: new EdgeInsets.only(top: 400.0),
                  child: new MaterialButton(
                    disabledColor: Colors.redAccent,
                    textColor: Colors.white,
                    height: 50.0,
                    minWidth: 1000.0,
                    child: new Text(
                      "Далее",
                      style: _sizeTextWhite,
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() {
    return _DropdownExampleState();
  }
}

class _DropdownExampleState extends State<DropdownExample> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Text("Украина +380"),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Text("Россия +7"),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            value: "3",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Text("Беларусь +375"),
              ],
            ),
          ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
        isExpanded: true,
      ),
    );
  }
}

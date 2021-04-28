import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckCode extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: FractionallySizedBox(
                widthFactor: 0.3,
                child: Container(child: FittedBox(fit: BoxFit.contain,
                  child: Text("Введите код из смс",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black87)))))),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
                flex:4,
                fit:FlexFit.tight,
                child: FractionallySizedBox(widthFactor: 0.5,
                    child: Row(
                        children: [
                          Flexible(
                              flex:3,
                              fit:FlexFit.tight,
                              child:TextFormField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87,fontSize: 30),
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(hintText: "0",
                                      hintStyle: TextStyle(fontSize: 30,color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 5),
                                          borderRadius: BorderRadius.circular(10.0))))),
                          Flexible(flex:1, child: Container()),
                          Flexible(
                              flex:3,
                              fit:FlexFit.tight,
                              child:TextFormField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87,fontSize: 30),
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(hintText: "0",
                                      hintStyle: TextStyle(fontSize: 30,color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 5),
                                          borderRadius: BorderRadius.circular(10.0))))),
                          Flexible(flex:1, child: Container()),
                          Flexible(
                              flex:3,
                              fit:FlexFit.tight,
                              child:TextFormField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87,fontSize: 30),
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(hintText: "0",
                                      hintStyle: TextStyle(fontSize: 30,color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 5),
                                          borderRadius: BorderRadius.circular(10.0))))),
                          Flexible(flex:1, child: Container()),
                          Flexible(
                              flex:3,
                              fit:FlexFit.tight,
                              child:TextFormField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black87,fontSize: 30),
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(hintText: "0",
                                      hintStyle: TextStyle(fontSize: 30,color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 5),
                                          borderRadius: BorderRadius.circular(10.0)))))]))),
            Flexible(
              flex:17,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(child: FittedBox(fit: BoxFit.contain,
                  child: Text("Получить новый код можно через 60 сек.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey)))))),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
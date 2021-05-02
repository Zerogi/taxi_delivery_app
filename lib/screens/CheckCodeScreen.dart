import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MapScreen.dart';

class CheckCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CheckCodeState();
}
class CheckCodeState extends State{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(flex:15, fit:FlexFit.tight, child: Container()),
            Flexible(
                flex:1,
                fit:FlexFit.tight,
                child: FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child:Container(child: FittedBox(fit: BoxFit.contain,
                            child: Text("Введите код из СМС",
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold,letterSpacing: 1)))
                        )))),
            Flexible(flex:1, fit:FlexFit.tight, child: Container()),
            Flexible(
                flex:1,
                fit:FlexFit.tight,
                child: FractionallySizedBox(
                    widthFactor: 0.8,
                    child:Align(
                        alignment: Alignment.centerLeft,
                        child: Container(child: FittedBox(fit: BoxFit.contain,
                            child: Text("Мы отправим код подтверждения Вам на телефон",
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black87,letterSpacing: 1)))
                        )))),
            Flexible(flex:1, fit:FlexFit.tight, child: Container()),
            Flexible(
                flex:3,
                fit:FlexFit.tight,
                child: FractionallySizedBox(widthFactor: 0.8,
                    child:Container(
                        child: Row(
                            children: [
                              Flexible(flex:1, fit:FlexFit.tight, child: Container()),
                              Flexible(flex:5,fit: FlexFit.tight,
                                  child:TextFormField(
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber))))),
                              Flexible(flex:1, fit:FlexFit.tight, child: Container()),
                              Flexible(flex:5,fit: FlexFit.tight,
                                  child:TextFormField(
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber))))),
                              Flexible(flex:1, fit:FlexFit.tight, child: Container()),
                              Flexible(flex:5,fit: FlexFit.tight,
                                  child:TextFormField(
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber))))),
                              Flexible(flex:1, fit:FlexFit.tight, child: Container()),
                              Flexible(flex:5,fit: FlexFit.tight,
                                  child:TextFormField(
                                      textAlign: TextAlign.center,
                                      maxLength: 1,
                                      style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber))))),
                              Flexible(flex:1, fit:FlexFit.tight, child: Container()),
                            ]
                        )))),
            Flexible(flex:15, fit:FlexFit.tight, child: Container()),
            Flexible(
                flex:3,
                fit:FlexFit.tight,
                child: FractionallySizedBox(widthFactor: 0.8,
                    child:MaterialButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        highlightColor: Colors.amber,
                        color: Color.fromRGBO(255, 247, 192, 1),
                        minWidth: double.infinity,
                        child: FittedBox(fit:BoxFit.contain,
                            child:Text("Продолжить",
                                style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black87,letterSpacing: 1))),
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>HomePage()));
                        }
                    ))),
            Flexible(flex:1, fit:FlexFit.tight, child: Container()),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi_delivery_app/screens/CheckCodeScreen.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State {
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
                      child: Text("Введите номер телефона",
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
                        Flexible(flex:2, fit: FlexFit.tight,
                            child:Text("+380",style: TextStyle(color: Colors.black87,letterSpacing: 1),textAlign: TextAlign.center)),
                        Flexible(flex:8,fit: FlexFit.tight,
                            child:TextFormField(
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black87),
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(hintText: "Номер телефона",
                                    hintStyle: TextStyle(color: Colors.grey,letterSpacing: 1),
                                    border: InputBorder.none)))
                      ]
                    ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(4)
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
                        MaterialPageRoute(builder: (context)=>CheckCode()));
                  }
                  ))),
            Flexible(flex:1, fit:FlexFit.tight, child: Container()),
          ],
        ),
      ),
    );
  }
}
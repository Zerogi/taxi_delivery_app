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
  final _mobileFormatter = NumberTextInputFormatter();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(flex:8, fit:FlexFit.tight, child: Container()),
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
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly,
                                  _mobileFormatter,
                                ],
                                maxLength: 12,
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black87),
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(hintText: "Номер телефона",
                                    counterText: "",
                                    hintStyle: TextStyle(color: Colors.grey,letterSpacing: 1),
                                    border: InputBorder.none)))
                      ]
                    ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(4)
                  )))),
            Flexible(flex:4, fit:FlexFit.tight, child: Container()),
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
            Flexible(flex:19, fit:FlexFit.tight, child: Container()),
          ],
        ),
      ),
    );
  }
}

class NumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 0;
    final StringBuffer newText = new StringBuffer();
    if (newTextLength >= 4) {
      if(newTextLength>=6){
        if(newTextLength>=8){
          newText.write(newValue.text.substring(0, 3) + ' '+ newValue.text.substring(3,5)+'-'+
              newValue.text.substring(5,usedSubstringIndex=7)+'-');
          if (newValue.selection.end >= 7) selectionIndex += 1;
        }
        else{
          newText.write(newValue.text.substring(0, 3) + ' '+ newValue.text.substring(3,usedSubstringIndex=5)+'-');
          if (newValue.selection.end >= 5) selectionIndex += 1;
        }
      }
      else{
        newText.write(newValue.text.substring(0, usedSubstringIndex = 3) + ' ');
        if (newValue.selection.end >= 3) selectionIndex += 1;
      }
    }
    if (newTextLength >= usedSubstringIndex)
      newText.write(newValue.text.substring(usedSubstringIndex));
    return new TextEditingValue(
      text: newText.toString(),
      selection: new TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
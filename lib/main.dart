import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(LogInScreen());

class LogInScreen extends StatelessWidget {

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
                child: Container(child: FittedBox(fit: BoxFit.cover,
                                                  child: Text("Введите свой номер телефона",
                                                         textAlign: TextAlign.center,
                                                         style: TextStyle(color: Colors.black87),),),),),),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
              flex:2,
              fit:FlexFit.tight,
              child: FractionallySizedBox(widthFactor: 0.3,
                child: DropdownExample(),),),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
              flex:3,
              fit:FlexFit.tight,
              child: FractionallySizedBox(widthFactor: 0.8,
                child:TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black87,fontSize: 30),
                keyboardType: TextInputType.phone,
                decoration: new InputDecoration(hintText: "+XXX XXX XX-XX-XX",
                                                hintStyle: TextStyle(fontSize: 30,color: Colors.grey),
                                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 5),
                                                                                                           borderRadius: BorderRadius.circular(10.0))),),),),
            Flexible(
              flex:17,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: FractionallySizedBox(
                widthFactor: 0.3,
                child: Container(child: FittedBox(fit: BoxFit.cover,
                  child: Text.rich(TextSpan(
                    text: 'Нажимая кнопку \"Далее\", вы принимаете условия\n',
                      children: <TextSpan>[
                        TextSpan(text: ' Пользовательского соглашения ', style: TextStyle(decoration: TextDecoration.underline)),
                        TextSpan(text: 'и'),
                        TextSpan(text: ' Политики\n конфиденциальности', style: TextStyle(decoration: TextDecoration.underline)),],),
                    textAlign:TextAlign.center,
                    style:TextStyle(color:Colors.grey),),),),),),
            Flexible(
              flex:1,
              fit:FlexFit.tight,
              child: Container(),
            ),
            Flexible(
              flex:2,
              fit:FlexFit.tight,
              child: FractionallySizedBox(widthFactor: 0.8,
                child:MaterialButton(
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black87,
                color: Colors.redAccent,
                textColor: Colors.white,
                minWidth: double.infinity,
                child: new Text("Далее",
                  style: TextStyle(color: Colors.white,fontSize: 20),),
                onPressed: (){},),),),
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
                Text("Украина +380"),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
        hint: Text("Выберите страну",style: TextStyle(color: Colors.black87,fontSize: 20),textAlign: TextAlign.center,),
      ),
    );
  }
}

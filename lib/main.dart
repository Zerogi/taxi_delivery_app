import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxi_delivery_app/screens/LoginScreen.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';


/*
void main(){
  runApp(
      MaterialApp(
        home:LogIn()));
}
*/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: "Map Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: HomePage()));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: YandexMap()
          )
        ],
      ),
    );
  }
}

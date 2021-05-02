import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxi_delivery_app/screens/LoginScreen.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:taxi_delivery_app/screens/LoginScreen.dart';


class HomePage extends StatelessWidget{
  YandexMapController controller;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Expanded(
            flex: 10,
              child: YandexMap(
                onMapCreated: (YandexMapController yandexMapController) async{
                  controller = yandexMapController;
                  final Point currentTarget = await controller.enableCameraTracking(
                      const PlacemarkStyle(iconName: 'lib/assets/place.png', opacity: 0.8),
                      cameraPositionChanged);
                  await addUserPlacemark(currentTarget);
                },
              )
          ),

          Expanded(
              flex: 1,
              //fit:FlexFit.tight,
              child: FractionallySizedBox(widthFactor: 1, heightFactor: 1,
                  child:MaterialButton(
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black87,
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      minWidth: double.infinity,
                      child: FittedBox(fit:BoxFit.contain,
                          child:Text("Заказать",
                              style: TextStyle(color: Colors.white))),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Login()));
                      }
                  ))),
        ],
      ),
    );
  }

  Future<void> cameraPositionChanged(dynamic arguments) async {
    final bool bFinal = arguments['final'];
    if (bFinal) {
      await addUserPlacemark(Point(
          latitude: arguments['latitude'],
          longitude: arguments['longitude']
      ));
    }
  }

  Future<void> addUserPlacemark(Point point) async {
    await controller.addPlacemark(Placemark(
      point: point,
      style: const PlacemarkStyle(
        opacity: 0.1, // 0.9
      ),
    ));
  }
}
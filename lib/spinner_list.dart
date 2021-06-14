import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget spinner0(){
  return Container(
   child: SpinKitDoubleBounce(
     color: Colors.red,
     size: 50,
   ),
  );
}
Widget spinner1(){
  return Container(
    child: SpinKitCircle(
      color: Colors.red,
      size: 50,
    ),
  );
}
Widget spinner2(){
  return Container(
    child: SpinKitCubeGrid(
      color: Colors.red,
      size: 50,
    ),
  );
}

Widget spinner3(){
  return Container(
    child: SpinKitHourGlass(
      color: Colors.red,
      size: 50,
    ),
  );
}

Widget spinner4(){
  return Container(
    child: SpinKitRotatingCircle(
      color: Colors.red,
      size: 50,
    ),
  );
}


Widget spinner5(){
  return Container(
    child: SpinKitWave(
      color: Colors.red,
      size: 50,
    ),
  );
}
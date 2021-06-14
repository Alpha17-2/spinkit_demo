import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home(),debugShowCheckedModeBanner: false,);
  }
}

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'Spinkit Demo',
      ),
        backgroundColor: Colors.black54,
      ),
    );
  }
}


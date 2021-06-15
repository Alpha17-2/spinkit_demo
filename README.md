# Spinkit Demo

[![pub package](https://img.shields.io/pub/v/flip_panel.svg)](https://pub.dev/packages/flutter_spinkit)

Demo application to show different types of spinkit animations

<p>
	<img src="https://github.com/Alpha17-2/spinkit_demo/blob/master/ss/spinkit_demo.gif" width="1050" height="450"  />
</p>

## How to use

Add this to dependencies :

````dart
dependencies:
  flutter_spinkit: ^5.0.0
````
import package :

````dart
import 'import 'package:flutter_spinkit/flutter_spinkit.dart';';
````

Create a Spinkit animation :

````dart
const mySpinkit = SpinKitPumpingHeart(
      color: Colors.blue,
      size: 30,
  );

````
Use it inside container or card :

````dart
Container(
child : mySpinkit,
);

````





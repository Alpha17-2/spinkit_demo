import 'package:flutter/material.dart';
import 'package:spinkit_demo/spinner_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home(),debugShowCheckedModeBanner: false,);
  }
}

class home extends StatelessWidget {

  final List<Widget> spinners = [
    spinner0(),spinner1(),spinner2(),spinner3(),spinner4(),spinner5()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'Spinkit Demo',
      ),
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                ),
                child: spinners[index],
              );
            },
          itemCount: spinners.length,
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:spinkit_demo/spinner_list.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home(),debugShowCheckedModeBanner: false,);
  }
}

class home extends StatelessWidget {

  final List<Widget> spinners = [
    spinner0(),spinner1(),spinner2(),spinner3(),spinner4(),spinner5(),spinner6(),spinner7(),spinner8(),
    spinner9(),spinner10(),spinner11(),spinner12(),spinner13(),spinner14(),spinner15(),spinner16()
    ,spinner17()
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
              return AnimationConfiguration.staggeredGrid (
                duration: Duration(seconds: 1),
                position: index,
                columnCount: 2,
                child: FadeInAnimation(
                  child: SlideAnimation(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black,width: 1),
                      ),
                      child: spinners[index],
                    ),
                  ),
                ),
              );
            },
          itemCount: spinners.length,
        ),
      ),
    );
  }
}


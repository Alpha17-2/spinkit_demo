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

  final List<String> nameOfSpinners =['DoubleBounce',
    'Circle',
    'CubeGrid',
    'HourGlass',
    'RotatingCircle',
    'Wave',
    'ChasingDots',
    'DualRing',
    'FadingCircle',
    'FadingCube',
    'FadingGrid',
    'FadingFour',
    'PouringHourglass',
    'PumpingHeart',
    'SpinningCircle',
    'WanderingCubes',
    'SquareCircle',
    'RotatingPlain'
  ];
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
        style: TextStyle(color: Colors.black87),
      ),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context,index){
              return AnimationConfiguration.staggeredGrid (
                duration: Duration(seconds: 2),
                position: index,
                columnCount: 3,
                child: FadeInAnimation(
                  child: SlideAnimation(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black,width: 1),
                        color: Colors.black,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 35,),
                          spinners[index],
                          SizedBox(height: 18,),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0),
                            child: Text(nameOfSpinners[index],overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: Colors.white),),
                          ),
                        ],
                      ),
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


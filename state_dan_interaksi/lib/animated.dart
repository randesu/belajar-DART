import 'package:flutter/material.dart';
// import 'counter.dart';
// import 'inputUser.dart';
// import 'callback.dart';

void main() {
  runApp(const MyAnimated());
}

class MyAnimated extends StatelessWidget {
  const MyAnimated({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyAnimation(),
    );
  }
}

class MyAnimation extends StatefulWidget{
  const MyAnimation({super.key});

  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>{
  Color _backgroundColor = Colors.lightBlueAccent;

  changeColor(){
    setState(() {
      _backgroundColor = Colors.pinkAccent;
    });
  }


  @override
 Widget build (BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('animasi demo'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          color: _backgroundColor,
          width: 200,
          height: 200,
          child: const Center(
            child: Text('Tap Me!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
          
          ),
          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            changeColor();
          });
        },
        //onPressed:changeColor(),
        child: const Icon(Icons.color_lens),
        ),
    );
 }
}
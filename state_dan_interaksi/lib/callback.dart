import 'package:flutter/material.dart';
// import './counter.dart';
// import 'inputUser.dart';

void main() {
  runApp(const MyCallback());
}

class MyCallback extends StatelessWidget {
  const MyCallback({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Callback Example',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CallbackExample(),
    );
  }
}

class CallbackExample extends StatelessWidget{
  const CallbackExample ({super.key});

  void showMessage(String message){
    debugPrint('Message Received : $message');
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Callback Example'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                showMessage('button pressed');
              }, 
              child: const Text('press me')
              )
          ],
        ),
      ),
    );  
  }

}


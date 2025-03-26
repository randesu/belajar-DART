import 'package:flutter/material.dart';
// import './counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const UserInputPage(),
    );
  }
}

class UserInputPage extends StatefulWidget{
  const UserInputPage({super.key});

  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage>{
  String inputText = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('user input example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  inputText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder()
              ),
              
            ),
            Text('input anda : $inputText')
            
            
          ],

        ),
        ),
    );
  }
}


import 'package:flutter/material.dart';
// import 'counter.dart';
// import 'inputUser.dart';
// import 'callback.dart';
// import 'animated.dart';

void main() {
  runApp(const MyDynamic());
}

class MyDynamic extends StatelessWidget {
  const MyDynamic({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Dynamic',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyDynamicApp(),
    );
  }
}

class MyDynamicApp extends StatefulWidget{
    const MyDynamicApp({super.key});

    @override
    MyDynamicAppState createState() => MyDynamicAppState();
}

class MyDynamicAppState extends State<MyDynamicApp>{
  List<String> items = ['banana','papaya', 'mango'];
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic app demo'),
        backgroundColor: Colors.lightBlueAccent,

      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(items[index]),
                );  
              }
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      labelText: 'add new item'
                    ),
                  ),
                ),

                IconButton(
                  onPressed: (){
                    setState(() {
                      items.add(
                        textEditingController.text
                      );
                      textEditingController.clear();
                    });
                  },
                  icon: const Icon(Icons.add))
              ],
            ),
          ),
        ],
        
      ),
      
    );
    
  }
}


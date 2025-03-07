import 'package:flutter/material.dart';

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
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mobile app ku'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title, 
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: 10,
          background: Paint(),
          decoration: TextDecoration.lineThrough,
          decorationColor: Color.fromARGB(255, 255, 0, 0),
          decorationStyle: TextDecorationStyle.dashed,
          decorationThickness: 3,
          fontFamily: 'Roboto',
          fontFamilyFallback: ['Roboto'],
          height : 2,
          overflow: TextOverflow.clip,
          shadows: [Shadow(color: Colors.black, offset: Offset.zero, blurRadius: 5)],
          wordSpacing: 5,

          ),
          strutStyle: StrutStyle(),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          softWrap: true,
          overflow: TextOverflow.clip,
          textScaler: TextScaler.noScaling,
          maxLines: 3,
          semanticsLabel: "mobile app",
          textWidthBasis: TextWidthBasis.parent,
          textHeightBehavior: TextHeightBehavior(),
          selectionColor: Colors.black,

          ),
      ),
      body: Center(
        
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        autofocus: false,
        backgroundColor: Colors.white,
        clipBehavior: Clip.none,
        focusColor: Colors.white,
        hoverColor: Colors.red,
        splashColor: Colors.yellow,
        elevation: 2,
        focusElevation: 5,
        hoverElevation: 5,
        highlightElevation: 5,
        

        
      ), 
    );
  }
}

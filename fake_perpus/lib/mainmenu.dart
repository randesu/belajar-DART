import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.jostTextTheme()
      ),
      home: MainMenu()
    );
  }
}

class MainMenu extends StatelessWidget{
  const MainMenu ({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold();
  }
}

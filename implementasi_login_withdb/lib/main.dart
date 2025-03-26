import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import './login.dart';
import './mainmenu.dart';
import './login-lms.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.jostTextTheme()
      ),
      home: LoginMain()
    );
  }
}

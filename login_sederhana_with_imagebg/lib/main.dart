import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//import 'package:cherry_toast/cherry_toast.dart';


main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      title: 'Login App',
      theme: ThemeData(
        
        
        // textTheme: GoogleFonts.jostTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
      LoginPage({super.key});

      @override
      Widget build(BuildContext context){
        return DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://raw.githubusercontent.com/randesu/learning/refs/heads/main/wallpaperflare.com_wallpaper.jpg'),
              fit: BoxFit.cover,
              ),
          

          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 400,
                        height: 500,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 150, 150, 150),
                            style: BorderStyle.solid,
                            width:1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 255, 255, 255),
                        
                          ),
                          child: Column(
                            
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text('Halo vv ff', style: TextStyle(
                                  fontFamily: 'LeagueSpartan',
                                  fontSize: 25,
                                  
                                ),),
                              ),
                              Card(
                                margin: EdgeInsets.all(10),
                                color: Colors.grey,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20

                                    )
                                  ),
                                  
                                ),
                              ),
                              Card(
                                margin: EdgeInsets.all(10),
                                color: Colors.grey,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20

                                    )
                                  ),
                                  
                                ),
                              ),
                              
                              
                            ],
                          ),
                      )
                    ],
                  ),
              ),
              
              // Container(
              //   alignment: Alignment.center,
              //   color: Colors.grey.withOpacity(0.1),
              //   child: Text(
              //     "CHOCOLATE",
              //     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              //   ),
              // ),
            ),
          ),
        );
      }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './login.dart';
//import 'package:cherry_toast/cherry_toast.dart';


main() {
  runApp(const MainMenu());
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      title: 'Login App',
      theme: ThemeData(
        
        textTheme: GoogleFonts.jostTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget{
  LoginPage({super.key});

  

  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      
        
        body: Center(
          
          child: Padding(
            
            padding: EdgeInsets.all(20),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                  constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  ),
                  
                  padding: EdgeInsets.all(8),
                  width: 300,
                  
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 150, 150, 150),
                      style: BorderStyle.solid,
                      width:1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                      )
                    ]
                  ),
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('Selamat datang,',
                      style: TextStyle(
                        //backgroundColor: Colors.grey,
                      ),),
                      Text('admin',
                      style: TextStyle(
                        fontSize: 30,
                        //backgroundColor: Colors.grey,
                      ),),
                      SizedBox(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),

                          height: 1,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.grey
                          ),
                        )
                      ),
                      Text('Recently Used',
                      style: TextStyle(
                        //backgroundColor: Colors.grey,
                      ),),

                   
                //       SizedBox(height: 20,),
               



                    ],
                  ),
                ),
                

                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    
                   Navigator.of(context).push(
                            MaterialPageRoute(
                              builder : (context){
                                return LoginMain();
                              }
                            )
                          );
                    
                      
                  },
                  child: Text('Kembali ke login page'),
                ),
                

              ],
            ),
            
          ),
        ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './mainmenu.dart';
//import 'package:cherry_toast/cherry_toast.dart';


main() {
  runApp(const LoginMain());
}

class LoginMain extends StatelessWidget {
  const LoginMain({super.key});

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

    void show(){
      var alertDialog = AlertDialog(
        content: Text('Anda bukan Admin')
      );
      showDialog(
        context: context,
        builder: (context){
          return alertDialog;
         }
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      
        // appBar: AppBar(
        //   elevation: 5,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)
        //   ),
        //   ),
        //   title: Text('Login'),
        // ),
        body: Center(
          
          
          child: Padding(
            
            padding: EdgeInsets.all(0),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  height: 75,
                  width: 380,
                  
                    
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          
                          child: Image.asset('logo-poltek.png'),
                        ),
                      ),
                      Expanded(
                        
                        child: Container(
                          
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Portal LMS', style: TextStyle(
                                fontSize: 15
                              ),),
                              Text('Politeknik Sampit', style: TextStyle(
                                fontSize: 20
                              ),)
                            ],
                          ),
                        )
                        ),
                     
                    ],
                  )
                  ),
                  //Image.asset('logo-poltek.png'),
                
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  //color: Colors.grey,
                  constraints: BoxConstraints(
                    maxHeight: double.infinity
                  ),
                  width: 380,
                  child: Text('Login untuk melanjutkan', 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ) ,),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 1,
                        offset: Offset(0, 0)
                      )
                    ]
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 20),
                  constraints: BoxConstraints(
                    maxHeight: double.infinity
                  ),
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'NIM Mahasiswa'
                    ),
                  )
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 1,
                        offset: Offset(0, 0)
                      )
                    ]
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(0, 2, 0, 20),
                  constraints: BoxConstraints(
                    maxHeight: double.infinity
                  ),
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password'
                    ),
                  )
                ),
                

                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    if (myController.text.contains('admin')){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder : (context){
                                return MainMenu();
                              }
                            )
                          );
                    }
                    else{
                          print(myController.text);
                          print(myController2.text);
                          return show();
                        

                        }

                  },
                  child: Text('Login'),
                ),
                

              ],
            ),
            
          ),
        ),
    );
  }
}




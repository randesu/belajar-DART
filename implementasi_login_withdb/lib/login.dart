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
      
        appBar: AppBar(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)
          ),
          ),
          title: Text('Login'),
        ),
        body: Center(
          
          
          child: Padding(
            
            padding: EdgeInsets.all(20),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(
    maxHeight: double.infinity,
),
                  
                  padding: EdgeInsets.all(25),
                  width: 300,
                  
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 150, 150, 150),
                      style: BorderStyle.solid,
                      width:1,
                    ),
                    borderRadius: BorderRadius.circular(30),
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
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField( 
                            controller: myController,
                            decoration: InputDecoration(
                              
                              hintText: 'Username',
                      ),
                    ),
                      SizedBox(height: 20,),
                      TextField(
                            controller: myController2,
                            decoration: InputDecoration(
                            hintText: 'password',
                  ) ,
                ),



                    ],
                  ),
                ),
                // TextField( 
                //   controller: myController,
                //   decoration: InputDecoration(
                    
                //     hintText: 'Username',
                //   ),
                // ),

                // SizedBox(height: 20,),
                // TextField(
                //   controller: myController2,
                //   decoration: InputDecoration(
                //     hintText: 'password',
                //   ) ,
                // ),

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
                        //   const AlertDialog(
                        //     content: Text('anda bukan admin')
                        //   //content: Text(myController.text),title: Text(myController2.text),
                        // );

                        }

                  //   showDialog(
                  //     context: (context),
                  //     builder: (context){
                  //       if (myController.text.contains('admin')){
                  //         Navigator.of(context).push(
                  //           MaterialPageRoute(
                  //             builder : (context){
                  //               return MainMenu();
                  //             }
                  //           )
                  //         );
                  //         print(myController.text);
                  //         print(myController2.text);
                  //         return AlertDialog(
                  //         content: Text("anda login admin"),
                          
                          
                  //         //content: Text(myController.text),title: Text(myController2.text),
                  //       );
                        

                  //       }
                  //       else{
                  //         print(myController.text);
                  //         print(myController2.text);
                  //         return AlertDialog(
                  //           content: Text('anda bukan admin')
                  //         //content: Text(myController.text),title: Text(myController2.text),
                  //       );

                  //       }
                  //       // print(myController.text);
                  //       // print(myController2.text);
                  //       // return AlertDialog(
                  //       //   content: Text(myController.text),title: Text(myController2.text),
                  //       // );
                      
                  //     },
                  //   );
                    
                      
                  },
                  child: Text('Login'),
                ),
                // CherryToast.info(
                //     title : Text('login'),
                //     action : Text('login uga'),
                //     actionHandler: (){
                //       print("action button ditekan");
                //     },
                // ).show(context),

              ],
            ),
            
          ),
        ),
    );
  }
}




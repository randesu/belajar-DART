import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        scaffoldBackgroundColor: Colors.white,
        textTheme:  GoogleFonts.leagueSpartanTextTheme(),

        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
      const MyHomePage({super.key});

    @override
    MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  int initialCount = 0;
  Color _appBarColor = Colors.white;
  changeState(){
    
      _appBarColor = Color.fromARGB(255, 255, 105, 3);
      initialCount++;
      if (initialCount > 2){
        initialCount = 0;
      }
      if (initialCount == 0){
        _appBarColor = Colors.white;
      }
  }
    
  List<String> myImage = ['assets/Welcome1e.png','assets/Welcome2e.png','assets/Welcome3e.png'];
  List<String> topCaption = ['Belanja Tanpa Ribet', 'Banyak Pilihan Model', 'Pembayaran Online atau Offline' ];
  List<String> bottomCaption = ['Belanja emas tanpa ribet dengan berbagai macam jenis produk yang kita tawarkan',
                                'Banyak pilihan model perhiasan yang ditawarkan untuk anda',
                                'Memudahkan anda dalam melakukan pembayaran setelah memilih perhiasan yang anda sukai'];

  final buttonColor = Color.fromARGB(255, 255, 105, 3);
  String welcome1 = 'Belanja emas tanpa ribet dengan berbagai macam jenis produk yang kita tawarkan';
  String welcome3 = 'Memudahkan anda dalam melakukan pembayaran setelah memilih perhiasan yang anda sukai';
  String welcome2 = 'Banyak pilihan model perhiasan yang ditawarkan untuk anda';

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(
          
          padding: EdgeInsets.only(left: 30),
          onPressed: (){
            setState(() {
              initialCount--;
              if (initialCount == 0){
                _appBarColor = Colors.white;
              }
            });
            
          }, 
         icon:  Icon(Icons.arrow_back_ios,color: _appBarColor,))
        //Icon(Icons.arrow_back_ios,color: _appBarColor,),
      ),

      bottomNavigationBar: BottomAppBar(
        height: 100,

        padding: EdgeInsets.fromLTRB(50, 0, 50, 30),
        color: Colors.white,
        child: ElevatedButton(onPressed:(){
          setState(() {
            changeState();
          });
        } ,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 105, 3))
        ),
         child: Text('Lanjutkan', style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          //backgroundColor: Color.fromARGB(255, 255, 105, 3)
         ),)),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(topCaption[initialCount],
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                // color: Colors.grey
              ),
              child: Image.asset(myImage[initialCount], fit: BoxFit.contain,),
            ),
            Container(
              width: 350,
              // height: 20,
              constraints: BoxConstraints(
                maxHeight: double.infinity
              ),
              decoration: BoxDecoration(
                //color: Colors.grey
              ),
              child: Wrap(
                children: [
            Text(bottomCaption[initialCount],
            textAlign: TextAlign.center,
            style: TextStyle(
             fontSize: 18,
             height: 1,
             fontWeight: FontWeight.w500
              
              
            ),)
                  
                ],
              ),
            )
            // Text(welcome1,
            // style: TextStyle(
              
              
            // ),)
          ],
        ),
      ),
    );
  }
}

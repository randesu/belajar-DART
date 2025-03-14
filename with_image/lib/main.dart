import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class Person{
  final String nama_anak;
  final String nama_orangtua;
  final String foto;


  Person({required this.nama_anak,required this.nama_orangtua, required this.foto});

}

class HomePage extends StatelessWidget{

  final List<Person> myPerson =[
      Person(
        nama_anak : "Cecilia Lieberia",
        nama_orangtua: "reinly",
        foto : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1wZkBQlmH3IfD0BvB35tk7Gl1TBfxUuxG-g&s'
      ),
      Person(
        nama_anak : "Elaine Celestia",
        nama_orangtua: "Reinly",
        foto:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAfBMDKE0OmZi3fyUSDtuF7lhPhV03EKIAyg&s'
      )
  ];

  final myimage = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpc0WoeT0vtxfiFp4MgMLjQpfBQRxws7Hing&s';
  List Personlist = [
    {"warna":"Merah","kode":"#ff0000"},
    {"warna":"Kuning","kode":"#FFFF00"},

                      ];
  
  // Widget _buildCardGrid(Person myPerson){
  //     return GridView.count(
  //         primary: false,
  //         padding: EdgeInsets.all(15),
  //         crossAxisCount: 2,
  //         mainAxisSpacing: 10,
  //         crossAxisSpacing: 10,
  //         children: <Widget>[
  //           Container(
  //             image
  //           )
  //         ]

  //         );
  //}

  Widget _buildCard(Person myPerson){
    return Card(
      margin : EdgeInsets.all(10),
      child : ListTile(
            // leading: Icon(Icons.home),
      leading: Image.network(myPerson.foto),
      title: Text(myPerson.nama_anak),
      subtitle: Text(myPerson.nama_orangtua),
      trailing: Icon(Icons.arrow_forward_ios),
            
          )

    );
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          leading: Icon(Icons.home),
          title: Text('Flutter Widget Sederhana')
        ),

      body: ListView.builder(
        
        
        itemBuilder: (context, index) {
        
        return _buildCard(myPerson[index]);
        // Card(
           
        //   margin : EdgeInsets.all(10),
        //   child : ListTile(
        //     // leading: Icon(Icons.home),
        //     leading: Image.network(myimage),
        //     title: Text(Personlist[index]['warna']),
        //     subtitle: Text(Personlist[index]['kode']),
        //     trailing: Icon(Icons.arrow_forward_ios),
            
        //   )
        // );
          
        
        },
        itemCount: Personlist.length
        
      )
        // body: Container(
          
        //   margin: const EdgeInsets.all(10.0),
        //   child: Column(
        //     children: <Widget>[
        //       Row(children: const <Widget>[
        //         Icon(Icons.archive),
        //         Text('Artikel Terbaru', style: TextStyle(color: Colors.black),)
        //       ],),

              
        //       // Card(child: SingleChildScrollView(
             

        //       Card(child: Column(
        //         children: <Widget>[
        //           Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpc0WoeT0vtxfiFp4MgMLjQpfBQRxws7Hing&s'),
        //           const Text('Minami Kotori')
        //         ],
        //       ),)

              
              
        //     ],
        //   ),
        //   ),
      )
    );
}
}
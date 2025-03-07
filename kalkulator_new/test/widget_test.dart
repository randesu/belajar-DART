
import 'package:kalkulator_new/main.dart';
import 'dart:io';
void main(){
  print("Selamat datang di project kalkulator sederhana");
  print("Pilih menu dibawah dengan mengetik angka tersebut");
  print("1. Pertambahan\n"
        "2. Pengurangan\n"
        "3. Perkalian\n"
        "4. Pembagian\n");
  // print('Nomor yang anda pilih : \r' );
  stdout.write('Nomor yang anda pilih : ');
  int? userNumberInput = int.parse(stdin.readLineSync()!);
  print(userNumberInput);
  
  //switch case setelah memasukkan pilihan
  switch(userNumberInput){

    //case pertambahan
    case 1:
      kalkulator tambahkan = kalkulator();
      stdout.write("masukkan angka pertama: ");
      double? userInputAngka1 = double.parse(stdin.readLineSync()!);
      tambahkan.angka1 = userInputAngka1;

      stdout.write("masukkan angka kedua: ");
      double? userInputAngka2 = double.parse(stdin.readLineSync()!);
      tambahkan.angka2 = userInputAngka2;

      tambahkan.tambah();
      print("");
      main();

    //case pengurangan
    case 2:
    kalkulator kurangi = kalkulator();
    stdout.write("masukkan angka pertama: ");
    double? userInputAngka1 = double.parse(stdin.readLineSync()!);
    kurangi.angka1 = userInputAngka1;

    stdout.write("masukkan angka kedua: ");
    double? userInputAngka2 = double.parse(stdin.readLineSync()!);
    kurangi.angka2 = userInputAngka2;

    kurangi.kurangi();
    print("");
    main();
      
    //case perkalian
    case 3:
    kalkulator kalikan = kalkulator();
    stdout.write("masukkan angka pertama: ");
    double? userInputAngka1 = double.parse(stdin.readLineSync()!);
    kalikan.angka1 = userInputAngka1;

    stdout.write("masukkan angka kedua: ");
    double? userInputAngka2 = double.parse(stdin.readLineSync()!);
    kalikan.angka2 = userInputAngka2;

    kalikan.dikali();
    print("");
    main();
     
    //case pembagian
    case 4:
    kalkulator bagikan = kalkulator();
    stdout.write("masukkan angka pertama: ");
    double? userInputAngka1 = double.parse(stdin.readLineSync()!);
    bagikan.angka1 = userInputAngka1;

    stdout.write("masukkan angka kedua: ");
    double? userInputAngka2 = double.parse(stdin.readLineSync()!);
    bagikan.angka2 = userInputAngka2;

    bagikan.dibagi();
    print("");
    main();

  }
  
}
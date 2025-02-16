library pertemuan_satu;
import 'dart:io';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

void tambah(a, b){
  stdout.write("masukkan angka pertama: " );
  double? angkaSatu = double.parse(stdin.readLineSync()!);
}

class kalkulator{
  double? angka1;
  double? angka2;

  void tambah(){
    print(angka1!+angka2!);

  }

  void kurangi(){
    print(angka1!-angka2!);
  }

  void dibagi(){
    print(angka1!/angka2!);
  }

  void dikali(){
    print(angka1!*angka2!);
  }
}

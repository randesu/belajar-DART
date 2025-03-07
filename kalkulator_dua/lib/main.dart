library kalkulator_dua;
import 'dart:io';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

// void tambah(a, b){
//   stdout.write("masukkan angka pertama: " );
//   double? angkaSatu = double.parse(stdin.readLineSync()!);
// }

class kalkulator{
  double? angka1;
  double? angka2;

  tambah(){
    return angka1!+angka2!;

  }

  kurangi(){
    return angka1!-angka2!;
  }

  dibagi(){
    return angka1!/angka2!;
  }

  dikali(){
    return angka1!*angka2!;
  }
}

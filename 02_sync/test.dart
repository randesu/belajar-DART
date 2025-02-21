_cobaAsyncHitung() async{
    print("async berhitung");


}

Stream<String> counter(int max) async* {
  for (int i = 0; i < max; i++){
    await Future.delayed(Duration(seconds:1));

    yield 'detik ke ${i}';
  }
}

main() async {
  counter(99).listen((counter) => print(counter));

  for (int i=0;i<15;i++){
  await _cobaAsyncHitung();
  }

}

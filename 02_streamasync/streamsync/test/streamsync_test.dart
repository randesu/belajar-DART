import 'package:flutter_test/flutter_test.dart';

import 'package:streamsync/streamsync.dart';

void _cobaAsyncHitung() async{
    print("async berhitung");


}

Stream<String> counter(int max) async* {
  for (int i = 0; i < max; i++){
    await Future.delayed(Duration(seconds:1));

    yield 'detik ke ${i}';
  }
}

main() async {
  // await _cobaAsyncHitung();
  counter(99).listen((counter) => print(counter));

}

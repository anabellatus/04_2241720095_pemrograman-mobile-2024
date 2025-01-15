import 'dart:math';

class NumberStream{
  Stream<int> getNumber() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      Random random = Random();
      int myNum = random.nextInt(100);
      return myNum;
    });
  }
}
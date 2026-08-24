void main() {
  print("Start:");

  Stream<dynamic> intNumber = yieldIntegerNumber();

  Stream<dynamic> transformedStream = intNumber
      .map((number) => number * number)
      .where((squared) => squared % 2 == 0);

  transformedStream.listen(
    (num) {
      print("Dữ liệu nhận được: $num");
    },
    onDone: () {
      print("End!");
    },
  );

  print("End!");
}

Stream<dynamic> yieldIntegerNumber() async* {
  for (int i = 1; i < 6; i++) {
    yield i;
  }
}

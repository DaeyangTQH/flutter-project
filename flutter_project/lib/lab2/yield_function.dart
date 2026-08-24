// Hàm sinh dữ liệu liên tục (Quan trọng trong dart vì nhiều thứ trong app có thể thay đổi liên tục)
Stream<int> countdownStream() async*{ // async* dùng để tạo Stream, trả về data theo thời gian
  for(int i = 3; i==0; i--){
    await Future.delayed(Duration(seconds: 1));
    yield i; // Phát từng giá trị vào luồng Stream
  }
}

// async dùng để tạo Future, cuối cùng chỉ trả về 1 kết quả

// Với sync* thì sẽ tạo ra 1 Iterable và dùng loop để đọc dữ liệu ra
// yield quyết định cái gì sẽ được đưa vào Iterable đó
Iterable<dynamic> testYield() sync*{
  yield [1, 2, 3]; // yield đưa cái list phần tử này vào cái Iterable mà testYield sync* trả về.
  yield testYieldStar();
}

Iterable<dynamic> testYieldStar() sync*{
  yield* [4, 5, 6]; // yield* đưa từng phần tử của cái này với type của nó vào trong Iterable.
}

//Cả hai đều được dùng bên trong một sync* function để tạo dữ liệu cho Iterable;
//yield thêm một value, còn yield* "trải" các value của một Iterable khác vào Iterable hiện tại.

void main()  {
  final result = testYield();
  final resultStar = testYieldStar();
  print(result.runtimeType);
  print(resultStar.runtimeType);

  for (final item in result){
    print(item);
    print(item.runtimeType);
  }

  for (final item in resultStar){
    print(item.runtimeType);
    print(item);
  }
}
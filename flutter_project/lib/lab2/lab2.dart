import 'dart:convert';

import 'package:http/http.dart' as http;

void basicSyntax(){
  int studentId = 123;
  double currentGPA = 8.2;
  String studentName = "Tran Quoc Hai";
  bool isGraduated = false;

  const String university = "FPT University"; // Hằng số compile time
  final DateTime currentTime = DateTime.now();

  // String Interpolation
  print("Truong hoc: $university");
  print("Tot nghiep: ${isGraduated ? "Da tot nghiep" : "Chua tot nghiep"}");
}

void collection(){
  List<int> exList = [11-14];
  exList.add(25);

  Set<int> uniqueSet = {10, 20, 30, 25, 36};
  uniqueSet.add(25);

  Map<String, dynamic> studentProfile = { // dynamic - runtime
    "id": "HE194622",
    "name": "Tran Quoc Hai"
  };

  studentProfile["gpa"] = 8.2;

  print("List: $exList");
  print("Set: $uniqueSet");
  print("Map: $studentProfile");
}

double calculateAvg(int sum, int count) => sum / count;

void celebration({required String name, String reward = "100k\$"}){
  print("Congratulation to $name, reward: $reward");
}

void loop(){
  List<String> names = ["Hai", "Hieu", "Hehe"];
  for(int i = 0; i< names.length; i++){
    print("Name at ${i + 1}: ${names[i]}\n");
  }
  print("-----------------------");
  for(var name in names){
    print("Name: $name\n");
  }
}

Future<void> fetchData() async {
  final response = await http.get(
    Uri.parse('https://api.sampleapis.com/coffee/ot')
  );

  if(response.statusCode == 200){
    final data = jsonDecode(response.body);

    print(data);
  } else{
    print("Error: ${response.statusCode}");
  }
}

String nullFunction(String? nullableName){ // ? Cho phép null
  return nullableName ?? "Tran Quoc Hai"; // ?? trả về giá trị thay thế nếu biến trước nó bị null
}

void main(){
  // basicSyntax();
  // collection();
  // print(calculateAvg(20, 4));
  // celebration(name: "Haichan");
  // loop();

  // fetchData();
  print(nullFunction(null));

  String noneNullable = "Haichan";
  print(noneNullable!.length); // ! khẳng định chắc chắn biến không null
}

// var khác dynamic ở chỗ dynamic thì runtime mới check, còn var thì compiler sẽ tự suy ra type của nó
// VD: var x = 10; x = "Haichan" -> lỗi

// Trong dart không có hệ thống Object và Primitive như java, tất cả mọi thứ int, double, String đều là object hết)
// Object không nullable - Object? có nghĩa là object có thể null

import 'dart:convert';

import 'package:first_flutter_project/lab3/user/user.dart';

class UserRepository {
  final String _mockApiResponse = '''
  [
    {"name": "Nguyen Van An", "email": "an.nv@fpt.edu.vn"},
    {"name": "Tran Binh", "email": "binh.t@fpt.edu.vn"},
    {"name": "Le Chi", "email": "chi.l@fpt.edu.vn"}
  ]
  ''';

  Future<List<User>> fetchUser() async {
    print("[UserRepo] đang kết nối và lấy dữ liệu]");
    await Future.delayed(Duration(seconds: 1));

    final List<dynamic> decodedJson = jsonDecode(_mockApiResponse); // Decode thành các Map<String, dynamic>

    return decodedJson
        .map((item) => User.fromJson(item as Map<String, dynamic>))
        .toList(); // Chuyển đổi kết quả cuối thành List
  }
}

class User {
  final String name;
  final String email;

  User({required this.name, required this.email});

  // Factory constructor nhận vào 1 map dữ liệu thô và trả về 1 đối tượng User hoàn chỉnh
  factory User.fromJson(Map<String, dynamic> json){
    return User(
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }

  @override
  String toString() {
    return 'User{name: $name, email: $email}';
  }
}
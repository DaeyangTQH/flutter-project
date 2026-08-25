// Quản lý tài nguyên tập trung, đảm bảo trong lúc chương trình chạy thì chỉ có 1 Settings duy nhất tồn tại
class Settings {
  static Settings? _instance; // Biến private static

  String themeMode = "Light";
  bool notificationsEnabled = true;

  // private named constructor
  // Ngăn chặn việc khởi tạo đối tượng từ bên ngoài bằng new Settings() tùy tiện
  Settings._internal();

  factory Settings() {
    _instance ??= Settings._internal(); // Nếu chưa có Setting thì tạo mới
    return _instance!; // Nếu đã có thì lấy cái cũ ra
  }

  void showConfig() {
    print("[Config] Theme: $themeMode, Alerts: $notificationsEnabled");
  }
}

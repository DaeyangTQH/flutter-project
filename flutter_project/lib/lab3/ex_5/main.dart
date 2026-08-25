import 'settings.dart';

void main(){
  var a = Settings();
  a.themeMode = "Dark";

  var b = Settings();

  // print(b.themeMode);

  print(identical(a, b));

  b.showConfig();
}
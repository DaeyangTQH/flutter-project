import 'Car.dart';
import 'electric_car.dart';

void main() {
  // Khởi tạo xe thường bằng default constructor
  Car myToyota = Car("Toyota", 2022);
  myToyota.startEngine();

  // Khởi tạo xe thường bằng Named Constructor
  Car customCar = Car.fromBrandOnly("Honda");
  customCar.startEngine();

  // Khởi tạo xe điện (Lớp con)
  ElectricCar myTesla = ElectricCar("Tesla", 2025, 75.0);
  myTesla.startEngine(); // Sẽ chạy phương thức đã được override
}
import 'package:first_flutter_project/oop/car.dart';

class ElectricCar extends Car {
  double batteryCapacity;

  ElectricCar(super.brand, super.year, this.batteryCapacity);


  @override
  void startEngine() {
    print("[ElectricCar] Xe điện $brand ($year) khởi động không tiếng ồn. Pin hiện tại: $batteryCapacity kWh.");
  }

}
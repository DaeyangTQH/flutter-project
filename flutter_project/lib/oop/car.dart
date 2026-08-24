class Car{
  String brand;
  int year;

  Car(this.brand, this.year);

  Car.fromBrandOnly(this.brand) : year = 2026;

  void startEngine(){
    print("[Car] Engine of brand $brand {$year} already started.");
  }

  // Dùng _ trước tên biến để biểu thị là private
}
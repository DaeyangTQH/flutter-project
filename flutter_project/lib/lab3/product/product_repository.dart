import 'dart:async';

import 'package:first_flutter_project/lab3/product/product.dart';

class ProductRepository {
  final List<Product> _products = [
    Product(id: "P01", name: "HaiTran", price: 2000),
    Product(id: "P02", name: "HaiTran02", price: 2001),
  ];

  // StreamController dùng để tạo và điều khiển Stream(Khá giống Event-Driven, và ở đây là 1 broker).
  final StreamController<Product> _productStreamController = StreamController<Product>.broadcast();

  Future<List<Product>> getAll() async{
    await Future.delayed(Duration(seconds: 1));
    return List.unmodifiable(_products);
  }

  // Theo dõi và phát ra luồng Stream thời gian thực
  Stream<Product> liveAdded() => _productStreamController.stream; // Trả về Stream mà StreamController đang cầm.

  void addProduct(Product product){
    _products.add(product);
    _productStreamController.add(product);
    print("[Repo] Đã thêm sản phẩm mới thành công: ${product.name}");
  }

  void dispose(){
    _productStreamController.close();
  }
}
import 'package:first_flutter_project/lab3/product/product.dart';
import 'package:first_flutter_project/lab3/product/product_repository.dart';

ProductRepository _productRepo = ProductRepository();

Future<void> main() async {
  Iterable<dynamic> products = await _productRepo.getAll();
  print(products);

  _productRepo.liveAdded().listen((newPro) { // Cần khởi tạo Listener trước, rồi sau đó Listener này mới bắt cái event mà StreamController phát ra
    print("Main new product: ${newPro.name}");
  });

  Product newPro = Product(
    id: 'P03',
    name: 'HEHE',
    price: 3000,
  );

  _productRepo.addProduct(newPro);

  print(products);
}

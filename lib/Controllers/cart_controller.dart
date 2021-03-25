import 'package:get/state_manager.dart';
import 'package:test_web/Model/Products.dart';

class CartController extends GetxController {
  //For GetX(Obx) because it is using .obs
  var cartItems = List<Product>().obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  //For GetxBuilder
  var testAmount = 0.0;

  addToCart(Product product) {
    cartItems.add(product);
    testAmount = totalPrice;
    update();
  }
}

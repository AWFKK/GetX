import 'package:get/get.dart';
import 'package:test_web/Model/Products.dart';

class ShoppingController extends GetxController{
   // With the help of .obs we make data observable
   // Now any time data change its going to
   // Update user interface
   var products = List<Product>().obs;

   @override
  void onInit() {
    super.onInit();
    //Fetching data
    fetchProducts();
  }

  //Suppose This method is Fetching Data from
  //Internet or any Api
  void fetchProducts()async{
    await Future.delayed(Duration(seconds: 1));
    var serverResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];


    products.value = serverResult;
  }
}
import 'package:pipe_lisboa/domain/ui_model/cart.dart';

class CartRepositoryApi {
  Future<Cart> fetchCart() {
    //mock
    List<CartProduct> products = List();
    var product = Product("nome", List(), "details", 10);
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    var cart = Cart(products, 3, 10);
    return Future.delayed(
        Duration(seconds: 2), () => throw 'Cannot locate user order');
  }
}

import 'package:pipe_lisboa/domain/ui_model/cart.dart';

class CartRepositoryApi {
  Future<Cart> fetchCart() {
    //mock
    List<CartProduct> products = List();
    var images = List<String>();
    images.add(
        "https://b34959663f5a3997bd0d-2668915a1d3a077262c88fab6aa0aa02.ssl.cf3.rackcdn.com/37742161_1_640.jpg");
    images.add(
        "https://estellabartlett.com/media/catalog/product/cache/b749e907c112dfaa4177631bbbec5083/e/b/eb2423c-02_1.jpg");
    var product = Product("nome", images, "details", 10);
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    products.add(CartProduct(product, 1, 10));
    var cart = Cart(products, 3, 10);
    return Future.delayed(Duration(seconds: 1), () => cart);
//    return Future.delayed(Duration(seconds: 2), () => throw 'Cannot locate user order');
  }
}

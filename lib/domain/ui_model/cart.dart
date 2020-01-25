import '../Model.dart';

class Cart extends Model {
  List<CartProduct> products;
  int totalQuantity;
  double total;

  Cart(this.products, this.totalQuantity, this.total);
}

class CartProduct {
  Product product;
  int quantity;
  double productTotal;

  CartProduct(this.product, this.quantity, this.productTotal);
}

class Product {
  String name;
  List<String> images;
  String details;
  double price;

  Product(this.name, this.images, this.details, this.price);
}

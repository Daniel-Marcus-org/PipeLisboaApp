import 'package:pipe_lisboa/domain/ui_model/cart.dart';
import 'base/PresenterListener.dart';

abstract class CartPresenterListener extends PresenterListener {
  void showCart(Cart cart);
}

import 'package:pipe_lisboa/presenters/implementations/base/BasePresenter.dart';
import 'package:pipe_lisboa/presenters/interfaces/CartPresenterListener.dart';
import 'package:pipe_lisboa/use_cases/GetCartUseCase.dart';

class CartPresenter extends BasePresenter<CartPresenterListener> {
  GetCartUseCase _getCartUseCase = GetCartUseCase();

  void getCart() async {
    listener.showLoader();
    listener.showCart(await _getCartUseCase.execute());
    listener.showScreen();
  }
}

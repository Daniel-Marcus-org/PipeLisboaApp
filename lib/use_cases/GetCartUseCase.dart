import 'package:pipe_lisboa/domain/ui_model/cart.dart';
import 'package:pipe_lisboa/repositories/api/CartRepositoryAPi.dart';
import 'package:pipe_lisboa/repositories/database/CartRepositoryDb.dart';
import 'package:pipe_lisboa/use_cases/base/UseCase.dart';

class GetCartUseCase extends UseCase<Cart> {
  CartRepositoryApi _api = CartRepositoryApi();
  CartRepositoryDb _db = CartRepositoryDb();

  @override
  Future<Cart> execute() {
    return _api.fetchCart();
  }
}

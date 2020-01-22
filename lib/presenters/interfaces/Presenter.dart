import 'PresenterListener.dart';

abstract class Presenter<L extends PresenterListener> {
  void attachListener(L listener);
}

import 'package:flutter/foundation.dart';
import 'package:pipe_lisboa/presenters/interfaces/base/Presenter.dart';
import 'package:pipe_lisboa/presenters/interfaces/base/PresenterListener.dart';

class BasePresenter<L extends PresenterListener> implements Presenter<L> {
  @protected
  L listener;

  @override
  void attachListener(L listener) {
    this.listener = listener;
  }
}

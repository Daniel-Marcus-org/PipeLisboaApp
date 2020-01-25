import 'package:flutter/material.dart';
import 'package:pipe_lisboa/ui/base/Screen.dart';

class CartScreen extends Screen {
  @override
  ScreenState<Screen> getScreenState() => _CartScreenState();
}

class _CartScreenState extends ScreenState<CartScreen> {
  @override
  Widget buildWidget() {
    return Container();
  }

  @override
  void doInitializations() {}
}

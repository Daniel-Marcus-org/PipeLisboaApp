import 'package:flutter/material.dart';
import 'package:pipe_lisboa/ui/base/Screen.dart';

class HomeScreen extends Screen {
  @override
  ScreenState<Screen> getScreenState() => _HomeScreenState();
}

class _HomeScreenState extends ScreenState<HomeScreen> {
  @override
  Widget buildWidget() {
    return Container();
  }

  @override
  void doInitializations() {
  }
}

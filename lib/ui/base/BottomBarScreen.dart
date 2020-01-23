import 'package:flutter/material.dart';
import 'package:pipe_lisboa/ui/base/Screen.dart';

class BottomBarScreen extends Screen {
  @override
  ScreenState<Screen> getScreenState() {
    return _BottomBarScreenState();
  }
}

class _BottomBarScreenState extends ScreenState<BottomBarScreen> {
  @override
  void doInitializations() {}

  @override
  Widget buildWidget() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Container(),
    );
  }
}

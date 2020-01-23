import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pipe_lisboa/AppNavigator.dart';

abstract class Screen extends StatefulWidget {
  ScreenState getScreenState();

  @override
  State<StatefulWidget> createState() {
    return getScreenState();
  }
}

abstract class ScreenState<SC extends Screen> extends State<SC> {
  Widget buildWidget();

  void doInitializations();

  AppNavigator appNavigator = AppNavigator();

  @override
  void initState() {
    super.initState();
    doInitializations();
  }

  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }
}

import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pipe_lisboa/ui/BaseScreen.dart';

class AppNavigator {
  void addScreen(BuildContext context, Screen newScreen) {
    Navigator.push(context, buildRoute(newScreen));
  }

  void popAddedScreen(BuildContext context, Screen newScreen) {
    if (Navigator.canPop(context)) {
      Navigator.push(context, buildRoute(newScreen));
    }
  }

  void replaceScreen(BuildContext context, Screen newScreen) {
    Navigator.pushReplacement(context, buildRoute(newScreen));
  }

  Route buildRoute(Screen newScreen) {
    if (Platform.isAndroid) {
      return MaterialPageRoute(builder: (context) => newScreen);
    } else {
      return CupertinoPageRoute(builder: (context) => newScreen);
    }
  }
}

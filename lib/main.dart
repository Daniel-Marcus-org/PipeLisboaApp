import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pipe_lisboa/ui/base/BottomBarScreen.dart';

void main() => runApp(PipeLisboaApp());

class PipeLisboaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return AndroidApp();
    } else {
      return IosApp();
    }
  }
}

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarScreen(),
    );
  }
}

class IosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BottomBarScreen(),
    );
  }
}

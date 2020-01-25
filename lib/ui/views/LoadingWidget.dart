import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white.withOpacity(0.7),
        child: Center(child: CircularProgressIndicator()));
  }
}

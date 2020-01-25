import 'package:flutter/material.dart';
import 'package:pipe_lisboa/ui/base/Screen.dart';
import 'package:pipe_lisboa/ui/cart/CartScreen.dart';
import 'package:pipe_lisboa/ui/categories/CategoriesScreen.dart';
import 'package:pipe_lisboa/ui/home/HomeScreen.dart';

class BottomBarScreen extends Screen {
  @override
  ScreenState<Screen> getScreenState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends ScreenState<BottomBarScreen> {
  int _selectedIndex = 0;

  @override
  void doInitializations() {}
  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    CartScreen()
  ];

  @override
  Widget buildWidget() {
    return Scaffold(
        appBar: AppBar(title: bottomItems[_selectedIndex].title),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: bottomItems,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.dashboard),
      title: Text('Categories'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text('Cart'),
    )
  ];
}

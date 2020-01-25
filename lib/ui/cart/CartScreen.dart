import 'package:flutter/material.dart';
import 'package:pipe_lisboa/domain/ui_model/cart.dart';
import 'package:pipe_lisboa/presenters/implementations/CartPresenter.dart';
import 'package:pipe_lisboa/presenters/interfaces/CartPresenterListener.dart';
import 'package:pipe_lisboa/ui/base/Screen.dart';

class CartScreen extends Screen {
  @override
  ScreenState<Screen> getScreenState() => _CartScreenState();
}

class _CartScreenState extends PresentableScreenState<CartScreen, CartPresenter>
    implements CartPresenterListener {
  Cart _cart;

  @override
  void attachToPresenter(CartPresenter presenter) {
    presenter.attachListener(this);
  }

  @override
  CartPresenter buildPresenter() => CartPresenter();

  @override
  Widget buildScreenWidget() {
    var products = _cart.products;
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return buildViewHolder(products[index]);
        });
  }

  @override
  void doInitializations() {
    presenter.getCart();
  }

  @override
  void showCart(Cart cart) {
    setState(() {
      _cart = cart;
    });
  }

  Widget buildViewHolder(CartProduct product) {
    return Card(
      child: Row(
        children: <Widget>[
          Image.network(""),
          Column(
            children: <Widget>[
              Text(product.product.name),
              Row(
                children: <Widget>[
                  Text(product.quantity.toString()),
                  Text(product.productTotal.toString())
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

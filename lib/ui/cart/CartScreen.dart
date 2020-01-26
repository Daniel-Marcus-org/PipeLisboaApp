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
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Card(
            child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return buildViewHolder(products[index]);
                }),
          );
        } else {
          return Card(child: buildCheckOutViewHolder());
        }
      },
      itemCount: 2,
    );
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Image.network(
            product.product.images.first,
            width: 100,
            height: 100,
          ),
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

  Widget buildCheckOutViewHolder() {
    return SizedBox(
      width: 300,
      height: 300,
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}

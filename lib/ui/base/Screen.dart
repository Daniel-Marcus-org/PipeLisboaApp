import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pipe_lisboa/AppNavigator.dart';
import 'package:pipe_lisboa/presenters/interfaces/base/Presenter.dart';
import 'package:pipe_lisboa/presenters/interfaces/base/PresenterListener.dart';
import 'package:pipe_lisboa/ui/views/LoadingWidget.dart';

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

abstract class PresentableScreenState<SC extends Screen,
        P extends Presenter<PresenterListener>> extends ScreenState<SC>
    implements PresenterListener {
  Widget buildScreenWidget();

  var _status = _ScreenStatus.SCREEN;
  P presenter;

  @override
  void initState() {
    presenter = buildPresenter();
    attachToPresenter(presenter);
    super.initState();
  }

  @override
  // ignore: missing_return
  Widget buildWidget() {
    var loaderLayout = LoaderWidget();
    var errorLayout = Container(child: Text("ERROR"));
    switch (_status) {
      case _ScreenStatus.SCREEN:
        return SafeArea(child: buildScreenWidget());
      case _ScreenStatus.LOADING:
        return SafeArea(child: loaderLayout);
      case _ScreenStatus.ERROR:
        return SafeArea(child: errorLayout);
    }
  }

  P buildPresenter();

  void attachToPresenter(P presenter);

  @override
  void showError() {
    setState(() {
      _status = _ScreenStatus.ERROR;
    });
  }

  @override
  void showScreen() {
    setState(() {
      _status = _ScreenStatus.SCREEN;
    });
  }

  @override
  void showLoader() {
    setState(() {
      _status = _ScreenStatus.LOADING;
    });
  }
}

enum _ScreenStatus { SCREEN, LOADING, ERROR }

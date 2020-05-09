import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:storeTest/store/AppState.dart';
import 'package:storeTest/ui/pages/Main/MainPageView.dart';
import 'package:storeTest/ui/pages/Main/MainPageViewModel.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, MainPageViewModel>(
      model: MainPageViewModel(),
      builder: (BuildContext context, MainPageViewModel vm) => MainPageView(
          isLoggedIn: vm.isLoggedIn,
          login: vm.login
      ),
    );
  }
}

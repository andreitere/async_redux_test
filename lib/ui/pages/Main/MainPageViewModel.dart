import 'package:async_redux/async_redux.dart';
import 'package:storeTest/store/AppState.dart';
import 'package:flutter/material.dart';
import 'package:storeTest/store/user/UserLoginAction.dart';

class MainPageViewModel extends BaseModel<AppState> {
  MainPageViewModel();

  bool isLoggedIn;
  Function login;

  MainPageViewModel.build({
    @required this.isLoggedIn,
    @required this.login
  }) : super(equals: [isLoggedIn]);

  @override
  MainPageViewModel fromStore() {
    print("this built");
    return MainPageViewModel.build(
      isLoggedIn: state.userState.loggedIn,
      login: () {
        return dispatchFuture(UserLoginAction(
          authGateway: "test",
          userToken: "test",
          uid: "test",
        ));
      },
    );
  }
}

import 'package:async_redux/async_redux.dart';
import 'package:storeTest/store/AppState.dart';
import 'package:storeTest/store/user/UserState.dart';

abstract class BaseAction extends ReduxAction<AppState> {
  UserState get userState => state.userState;
}
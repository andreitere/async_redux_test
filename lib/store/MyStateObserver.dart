import 'package:async_redux/async_redux.dart';

class MyStateObserver extends StateObserver {
  @override
  void observe(ReduxAction action, stateIni, stateEnd, int dispatchCount) {
    print("State updated ${stateEnd.toString()} ${dispatchCount} ${action}");
    print(stateEnd.userState.loggedIn.toString());
    // TODO: implement observe
  }
}

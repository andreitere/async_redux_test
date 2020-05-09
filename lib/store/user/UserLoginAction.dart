import 'package:storeTest/store/BaseAction.dart';

import '../AppState.dart';

class UserLoginAction extends BaseAction {
  final String authGateway;
  final String userToken;
  final String uid;

  UserLoginAction({this.authGateway, this.userToken, this.uid});

  @override
  Future<AppState> reduce() async {
    print("UserLoginAction $authGateway | $userToken | $uid");
    await Future.delayed(Duration(seconds: 3));
    return state.copy(
        userState: userState.copy(userToken: "test", loggedIn: true));
  }
}

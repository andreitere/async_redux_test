class UserState {
  final bool loggedIn;
  final String userToken;
  final String user;
  final bool loginFailed;

  UserState({this.loggedIn, this.userToken, this.user, this.loginFailed});

  static UserState initialState() => UserState(
      loggedIn: false,
      userToken: "",
      user: null,
      loginFailed: false
  );

  UserState copy({loggedIn, userToken, user, loginFailed}) => UserState(
      loggedIn: loggedIn ?? this.loggedIn,
      userToken: userToken ?? this.userToken,
      user: user ?? this.user,
      loginFailed: loginFailed ?? this.loginFailed
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is UserState &&
              runtimeType == other.runtimeType &&
              loggedIn == other.loggedIn;

  @override
  int get hashCode => loggedIn.hashCode;


}

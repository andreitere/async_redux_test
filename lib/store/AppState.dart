import 'package:storeTest/store/user/UserState.dart';

class AppState {
  final UserState userState;

  AppState({this.userState});

  AppState copy({
    UserState userState,
  }) {
    return AppState(
      userState: userState ?? this.userState,
    );
  }

  static AppState initialState() => AppState(
    userState: UserState.initialState(),
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AppState &&
              runtimeType == other.runtimeType &&
              userState == other.userState;

  @override
  int get hashCode => userState.hashCode;
}

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:storeTest/store/AppState.dart';
import 'package:storeTest/store/MyStateObserver.dart';
import 'package:storeTest/ui/pages/Main/MainPage.dart';
import 'package:storeTest/ui/pages/Main/MainPageView.dart';

Store<AppState> store = Store<AppState>(
  initialState: AppState.initialState(),
  stateObservers: [MyStateObserver()],
  modelObserver: DefaultModelObserver(),
  actionObservers: [Log.printer(formatter: Log.verySimpleFormatter)],
);



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      ),
    );
  }
}

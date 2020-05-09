import 'package:flutter/material.dart';

class MainPageView extends StatefulWidget {
  final Function login;
  final bool isLoggedIn;

  const MainPageView({Key key, this.login, this.isLoggedIn}) : super(key: key);

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  _doSomething() async {
    print("calling action");
    await widget.login();
    print("Mutated prop is" + widget.isLoggedIn.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: InkWell(
          onTap: () => _doSomething(),
          child: SizedBox(
            child: Container(
              color: Colors.blue,
              child: Text(
                "TapMe",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      )),
    );
  }
}

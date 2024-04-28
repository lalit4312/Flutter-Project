import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigateScreen extends StatelessWidget {
  const NavigateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.phone_android),
                  SafeArea(
                      child: Container(
                    child: Text(" Call "),
                  ))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.navigation),
                  SafeArea(
                      child: Container(
                    child: Text(" ROUTE "),
                  ))
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  SafeArea(
                      child: Container(
                    child: Text(" SHARE "),
                  ))
                ],
              )
            ]),
      ),
    ));
  }
}

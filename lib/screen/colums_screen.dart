import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnsScreen extends StatelessWidget {
  const ColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('column'),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Login')),
              ElevatedButton(onPressed: () {}, child: const Text('SignUp')),
              ElevatedButton(onPressed: () {}, child: const Text('forgotPass')),
            ],
          ),
        ));
  }
}

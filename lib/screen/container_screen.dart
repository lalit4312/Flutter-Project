import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      // body: SafeArea(
      //   child: Center(
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       alignment: Alignment.center,
      //       // color: Colors.amberAccent,
      //       child: const Text('I am a container'),
      //       decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors.amberAccent,
      //           border: Border.all(
      //             color: Colors.black,
      //             width: 3,
      //           )),
      //     ),
      //   ),
      // )

      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.centerRight,
            // color: Colors.amberAccent,
            child: const Text('I am a container'),
            decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: Colors.amberAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                )),
          ),
        ),
      ),
    );
  }
}

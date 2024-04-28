import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowAndColumnScreen extends StatelessWidget {
  const RowAndColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        backgroundColor: Color.fromARGB(255, 43, 91, 130),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text("container 1"),
                    // width: double,
                    height: 80,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text("container 2"),
                    // width: 135,
                    height: 80,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text("container 3"),
                    // width: 135,
                    height: 80,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              child: const Text("container 1"),
              width: double.infinity,
              height: 250,
              color: Color.fromARGB(255, 43, 9, 137),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              child: const Text("container 1"),
              width: double.infinity,
              height: 250,
              color: Colors.blue,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              alignment: Alignment.center,
              child: const Text("container 1"),
              width: double.infinity,
              height: 250,
              color: Color.fromARGB(255, 43, 9, 137),
            ),
          ),

          // Column(
          //   children: [
          //     Container(
          //       alignment: Alignment.center,
          //       child: const Text("container 1"),
          //       width: double.infinity,
          //       height: 250,
          //       color: Color.fromARGB(255, 43, 9, 137),
          //     ),
          //     Container(
          //       alignment: Alignment.center,
          //       child: const Text("container 2"),
          //       width: double.infinity,
          //       height: 250,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       alignment: Alignment.center,
          //       child: const Text("container 3"),
          //       width: double.infinity,
          //       height: 250,
          //       color: Color.fromARGB(255, 43, 9, 137),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}

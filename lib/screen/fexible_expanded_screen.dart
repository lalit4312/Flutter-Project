import 'package:batch_32b/common/my_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: double.infinity,
              height: 500,
              color: Colors.amber,
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  //   backgroundColor: Colors.green,
                  //   content: Text("hello world"),
                  //   duration: Duration(seconds: 3),
                  //   behavior: SnackBarBehavior.floating,
                  // ));
                  showMySnackBar(message: "1 is pressed", context: context);
                },
                child: const Text(
                  '1',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            // fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.purple,
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  //   backgroundColor: Colors.red,
                  //   content: Text("hello world"),
                  //   duration: Duration(seconds: 3),
                  //   behavior: SnackBarBehavior.floating,
                  // ));
                  showMySnackBar(
                      message: "2 is pressed",
                      context: context,
                      color: Colors.red);
                },
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
              // child:
            ),
          )
        ],
        // ),
        // ],
      ),
    );
  }
}

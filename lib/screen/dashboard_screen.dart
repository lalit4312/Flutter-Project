import 'package:batch_32b/screen/arithmetic_screen.dart';
import 'package:batch_32b/screen/simple_interest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          backgroundColor: Colors.amber[100],
          title: const Text("Dashboard"),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ArithmeticScreen()),
                    );
                  },
                  child: const Text("Arithmetic"),
                ),
                const SizedBox(
                  height: 2,
                ),
                ElevatedButton(
                    // style: ButtonStyle(backgroundColor:),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SimpleInterest()),
                      );
                    },
                    child: const Text("SimpleInterest"))
              ],
            )));
  }
}

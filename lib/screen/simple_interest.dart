import 'package:batch_32b/model/simple_interest_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterest> {
  final mykey = GlobalKey<FormState>();
// Delcare variables
  double? Principle;
  double? Time;
  double? Rate;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Simple Interest"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: mykey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'enter Principle';
                  }
                },
                onChanged: (value) {
                  Principle = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Principle.circular(10.0)),
                  //     enabledBoarder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.red),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.green))),
                  labelText: 'Enter principle',
                ),
              ),

              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'enter Time';
                  }
                },
                onChanged: (value) {
                  Time = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Time',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'Enter Rate';
                  }
                },
                onChanged: (value) {
                  Rate = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Rate',
                ),
              ),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    if (mykey.currentState!.validate()) {}
                    setState(() {
                      SimpleInterestModel simpleInterestModel =
                          SimpleInterestModel(
                              Principle: Principle!, Time: Time!, Rate: Rate!);
                      result = simpleInterestModel.calculate();
                    });
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Simple Interest is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),

              RichText(
                text: const TextSpan(
                    // text: 'M',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'M',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: 'y name is Lalit',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ]),
              ),
              RichText(
                  text: const TextSpan(
                      text: 'Hello',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: ' bold ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: 'world!',
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

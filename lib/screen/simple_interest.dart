import 'package:batch_32b/model/simple_interest_model.dart';
import 'package:flutter/material.dart';

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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
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
            ],
          ),
        ),
      ),
    );
  }
}

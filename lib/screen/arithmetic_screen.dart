import 'package:batch_32b/model/arithmetic_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final myKey = GlobalKey<FormState>(); //
// Delcare variables
  int? first;
  int? second;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: myKey,
        // using this function form for doing the validation
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'enter first number';
                  }
                },
                onChanged: (value) {
                  first = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value!.isEmpty) {
                    return 'enter Second number';
                  }
                },
                onChanged: (value) {
                  second = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
              ),
              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    if (myKey.currentState!.validate()) {}
                    setState(() {
                      ArithmeticModel arithmeticModel =
                          ArithmeticModel(first: first!, second: second!);
                      result = arithmeticModel.add();
                    });
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              Text(
                'Sum is : $result',
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

import 'package:batch_32b/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen> {
  final myKey = GlobalKey<FormState>();
  CircleModel? circleModel;
  double? radius;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
      ),
      body: Form(
          key: myKey,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      radius = double.parse(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter anything';
                      }
                    },
                    decoration: const InputDecoration(
                        labelText: "Enter Radius",
                        border: OutlineInputBorder()),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (myKey.currentState!.validate()) {
                          setState(() {
                            circleModel = CircleModel(radius: radius!);
                            result = circleModel!.areaofcircle();
                          });
                        }
                      },
                      child: const Text("Calculate Area")),
                  const SizedBox(height: 8),
                  Text(
                    'Area is : $result',
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ))),
    );
  }
}

import 'package:flutter/material.dart';

class CreateTest extends StatefulWidget {
  const CreateTest({Key? key}) : super(key: key);

  @override
  State<CreateTest> createState() => _CreateTestState();
}

class _CreateTestState extends State<CreateTest> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: Text('Center fo the create Test'),),
    );
  }
}


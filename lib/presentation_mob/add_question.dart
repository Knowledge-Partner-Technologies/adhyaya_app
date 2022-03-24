// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({
    Key? key,
  }) : super(key: key);  

  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  final TextEditingController? questionController = TextEditingController();

  final TextEditingController optionController = TextEditingController();
  final List<TextEditingController?> options = <TextEditingController>[];
  int? groupVal = -1;

  @override
  void initState() {
    // for (options.isEmpty; options.length <= 2; options.length++) {
    //   options.add(optionController);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              subtitle: TextFormField(
            controller: questionController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                label: Text('Question'),
                labelStyle: TextStyle(color: Colors.black, fontSize: 18.0)),
          )),
          const Padding(padding: EdgeInsets.only(top: 12.0)),
          ListTile(
            leading: Radio(
              value: 0,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = val as int?;
                });
              },
              activeColor: Colors.green,
            ),
            title: const Text('Option 1'),
          ),
          ListTile(
            leading: Radio(
              value: 1,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = val as int?;
                });
              },
              activeColor: Colors.green,
            ),
            title: const Text('Option 2'),
          ),
          ListTile(
            leading: Radio(
              value: 2,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = val as int?;
                });
              },
              activeColor: Colors.green,
            ),
            title: const Text('Option 3'),
          ),
          ListTile(
            leading: Radio(
              value: 3,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = val as int?;
                });
              },
              activeColor: Colors.green,
            ),
            title: const Text('Option 4'),
          ),
        ],
      ),
    );
  }
}

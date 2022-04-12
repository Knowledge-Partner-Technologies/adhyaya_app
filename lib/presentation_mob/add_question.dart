// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

// import 'package:adhyaya_application_new/data/models/questions_model.dart';

class AddQuestion extends StatefulWidget {
//  final QuestionsModel model;
  const AddQuestion({
    Key? key,
    // required this.model,
  }) : super(key: key);

  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  final TextEditingController questionController = TextEditingController();

  final TextEditingController optionController = TextEditingController();

  final TextEditingController optionController1 = TextEditingController();

  final TextEditingController optionController2 = TextEditingController();

  final TextEditingController optionController3 = TextEditingController();

  final TextEditingController optionController4 = TextEditingController();

  int? groupVal;

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
            decoration: InputDecoration(
                label: const Text('Question'), labelStyle: labelStyle),
          )),
          const Padding(padding: EdgeInsets.only(top: 12.0)),
          ListTile(
            leading: Radio(
              value: 0,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = 0;
                });
              },
              activeColor: Colors.green,
            ),
            title: TextFormField(
              controller: optionController1,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: const Text('Option 1'), labelStyle: labelStyle),
            ),
          ),
          ListTile(
            leading: Radio(
              value: 1,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = 1;
                });
              },
              activeColor: Colors.green,
            ),
            title: TextFormField(
              controller: optionController2,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: const Text('Option 2'), labelStyle: labelStyle),
            ),
          ),
          ListTile(
            leading: Radio(
              value: 2,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = 2;
                });
              },
              activeColor: Colors.green,
            ),
            title: TextFormField(
              controller: optionController3,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: const Text('Option 3'), labelStyle: labelStyle),
            ),
          ),
          ListTile(
            leading: Radio(
              value: 3,
              groupValue: groupVal,
              onChanged: (val) {
                setState(() {
                  groupVal = 3;
                });
              },
              activeColor: Colors.green,
            ),
            title: TextFormField(
              controller: optionController4,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  label: const Text('Option 4'), labelStyle: labelStyle),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle labelStyle = const TextStyle(color: Colors.black, fontSize: 18.0);
}

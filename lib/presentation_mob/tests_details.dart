import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestDetails extends StatefulWidget {
  const TestDetails({Key? key, required this.buttonName}) : super(key: key);
  final String buttonName;

  @override
  State<TestDetails> createState() => _TestDetailsState();
}

class _TestDetailsState extends State<TestDetails> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            testCard(
                testName: 'General Knowledge',
                marks: 50,
                duration: 5,
                questions: 5, buttonName: widget.buttonName),
            testCard(
                testName: 'General Knowledge',
                marks: 50,
                duration: 5,
                questions: 5, buttonName: widget.buttonName),
            testCard(
                testName: 'General Knowledge',
                marks: 50,
                duration: 5,
                questions: 5, buttonName: widget.buttonName),
          ],
        ),
      ),
    );
  }

  Widget testCard({
    required String testName,
    required int marks,
    required int duration,
    required int questions,
    required String buttonName,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 240.0,
        decoration: BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.book),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(testName),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.bar_chart_sharp),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(marks.toString() + '  Marks'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.timer),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(duration.toString() + '  Minutes'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.question_answer, color: Colors.black),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(questions.toString() + '  Questions'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CupertinoButton.filled(onPressed: () {}, child: Text(buttonName, style:const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ],
              ),
            ]),
      ),
    );
  }
}

import 'package:adhyaya_application_new/data/models/get_tests_model.dart';
import 'package:adhyaya_application_new/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UtilWidgets { 

  Widget testTile({required GetTestModel model, required VoidCallback onTap, required double height}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: height,
        child: Card(
            elevation: 10.0,
            borderOnForeground: true,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Test: ' + model.testName,
                    style: Styles.generalText,
                  ),
                  Text(
                    'Marks: ' + model.totalMarks.toString(),
                    style: Styles.generalText,
                  ),
                  Text(
                    'Questions: ' + model.testQuestions.toString(),
                    style: Styles.generalText,
                  ),
                  Text(
                    'Duration: ' + model.duration.toString(),
                    style: Styles.generalText,
                  ),
                  CupertinoButton(
                      alignment: Alignment.center,
                      color: Colors.green,
                      minSize: 54.0,
                      borderRadius: BorderRadius.circular(12.0),
                      child: model.isPublished == true
                          ? Text('Un-Publish', style: Styles.buttonStyle)
                          : Text(
                              'Publish',
                              style: Styles.buttonStyle,
                            ),
                      onPressed: onTap)
                ],
              ),
            )),
      ),
    );
  }






}
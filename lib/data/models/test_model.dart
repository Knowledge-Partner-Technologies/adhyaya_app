import 'package:cloud_firestore/cloud_firestore.dart';

class TestModel {
  final String testName;
  final bool isPublished;
  final int duration, totalMarks, testQuestions;
  TestModel({
    required this.duration,
    required this.totalMarks,
    required this.testName,
    required this.isPublished,
    required this.testQuestions,
  });

  factory TestModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return TestModel(
      duration: doc["duration"],
      totalMarks: doc["totalMarks"],
      testName: doc["testName"],
      isPublished: doc["isPublished"],
      testQuestions: doc["totalQuestions"],
    );
  }

  Map<String, dynamic> toMap() => {
        "duration": duration,
        "totalMarks": totalMarks,
        "testName": testName,
        "isPublished": isPublished,
        "totalQuestions": testQuestions,
      };
}

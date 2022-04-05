import 'package:cloud_firestore/cloud_firestore.dart';

class GetTestModel {
  final String testName, id;
  final bool isPublished;
  final int duration, totalMarks, testQuestions;
  GetTestModel({
    required this.duration,
    required this.id,
    required this.totalMarks,
    required this.testName,
    required this.isPublished,
    required this.testQuestions,
  });

  factory GetTestModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return GetTestModel(
        duration: doc["duration"],
        totalMarks: doc["totalMarks"],
        testName: doc["testName"],
        isPublished: doc["isPublished"],
        testQuestions: doc["totalQuestions"],
        id: doc.id);
  }

  // Map<String, dynamic> toMap() => {
  //       "duration": duration,
  //       "totalMarks": totalMarks,
  //       "testName": testName,
  //       "isPublished": isPublished,
  //       "totalQuestions": testQuestions,
  //     };
}

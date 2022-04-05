import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionsModel {
  final String question, correctAnswer;
  final List<String> options;
  QuestionsModel({
    required this.question,
    required this.correctAnswer,
    required this.options,
  });

  factory QuestionsModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    return QuestionsModel(
        question: doc["question"],
        correctAnswer: doc["correctAnswer"],
        options: doc["options"]);
  }

  Map<String, dynamic> toMap() => {
        "question": question,
        "correctAnswer": correctAnswer,
        "options": options
      };
}

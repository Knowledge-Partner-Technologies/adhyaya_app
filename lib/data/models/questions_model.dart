import 'package:adhyaya_application_new/presentation_mob/add_question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionsModel {
  List<String>? options;
  String? question;
  String? correctAnswer;
  String? submittedAnswer;

  QuestionsModel(
      {this.options, this.question, this.correctAnswer, this.submittedAnswer});

  QuestionsModel.fromJson(DocumentSnapshot json) {
    options = json['options'].cast<String>();
    question = json['question'];
    correctAnswer = json['correctAnswer'];
  }

  Map<String, dynamic> toMap() => {
        "correctAnswer": correctAnswer,
        "question": question,
        "options": options,
      };
}

import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionsModel {
  List<String>? options;
  String? question;
  String? correctAnswer;
  String? submittedAnswer;

  QuestionsModel({this.options, this.question, this.correctAnswer, this.submittedAnswer});

  QuestionsModel.fromJson(DocumentSnapshot json) {
    options = json['options'].cast<String>();
    question = json['question'];
    correctAnswer = json['correctAnswer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['options'] = options;
    data['question'] = question;
    data['correctAnswer'] = correctAnswer;
    return data;
  }
}

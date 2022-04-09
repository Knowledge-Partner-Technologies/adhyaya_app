part of 'questions_bloc.dart';

class QuestionsEvent {}

class QuestionsEventGet extends QuestionsEvent {
  String documentId;
  // int totalQuestions;
  QuestionsEventGet({
    required this.documentId,
    // required this.totalQuestions,
  });
}

part of 'questions_bloc.dart';

class QuestionsState {}

class QuestionsInitial extends QuestionsState {}

class QuestionsSuccess extends QuestionsState {
  List<QuestionsModel> questions;
  QuestionsSuccess({
    required this.questions,
  });
}

class QuestionsFailure extends QuestionsState {}

class QuestionsError extends QuestionsState {}

class QuestionsLess extends QuestionsState {}

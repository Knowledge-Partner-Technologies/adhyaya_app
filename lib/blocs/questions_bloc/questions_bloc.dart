import 'package:adhyaya_application_new/data/apis/get_questions_api.dart';
import 'package:adhyaya_application_new/data/models/questions_model.dart';
import 'package:bloc/bloc.dart';
import 'dart:developer';
part 'questions_event.dart';
part 'questions_state.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {
  QuestionsBloc() : super(QuestionsInitial()) {
    on<QuestionsEventGet>((event, emit) async {
      emit(QuestionsInitial());

      final result = await GetQuestionsApi().getQuestionsTest(
        docId: event.documentId,
        //  totalQ: event.totalQuestions
      );

      log(result.toString());

      if (result.isNotEmpty) {
        emit(QuestionsSuccess(questions: result));
      } else {
        emit(QuestionsLess());
      }
    });
  }
}

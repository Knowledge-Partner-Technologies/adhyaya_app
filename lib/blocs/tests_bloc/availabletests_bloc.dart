import 'package:adhyaya_application_new/data/apis/get_tests_api.dart';
import 'package:adhyaya_application_new/data/models/get_tests_model.dart';
import 'package:bloc/bloc.dart';

part 'availabletests_event.dart';
part 'availabletests_state.dart';

class AvailabletestsBloc
    extends Bloc<AvailabletestsEvent, AvailabletestsState> {
  AvailabletestsBloc() : super(AvailabletestsInitial()) {
    on<AvailableTestsGetEvent>((event, emit) async {
      emit(AvailabletestsInitial());

      final result = await GetTests().getAvailableTests(isTrue: event.isTrue);

      if (result.isNotEmpty) {
        return emit(AvailabletestsLoaded(loadedTests: result));
      } else if (result.isEmpty) {
        return emit(
            AvailabletestEmpty(message: 'There are no tests available'));
      } else {
        return emit(AvailabletestError(message: 'Unexpected Error'));
      }
    });
  }
}

part of 'availabletests_bloc.dart';

class AvailabletestsState {}

class AvailabletestsInitial extends AvailabletestsState {}

class AvailabletestsLoaded extends AvailabletestsState {
  List<GetTestModel> loadedTests = [];
  AvailabletestsLoaded({
    required this.loadedTests,
  });
}

class AvailabletestEmpty extends AvailabletestsState {
  String message;
  AvailabletestEmpty({
    required this.message,
  });


  
}

class AvailabletestsFailed extends AvailabletestsState {
  String message;
  AvailabletestsFailed({
    required this.message,
  });
}

class AvailabletestError extends AvailabletestsState {
  String message;
  AvailabletestError({
    required this.message,
  });
}

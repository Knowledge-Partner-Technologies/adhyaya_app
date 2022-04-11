part of 'availabletests_bloc.dart';

class AvailabletestsEvent {}

class AvailableTestsGetEvent extends AvailabletestsEvent {
  bool isTrue;
  AvailableTestsGetEvent({
    required this.isTrue,
  });
}

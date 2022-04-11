import 'package:adhyaya_application_new/blocs/tests_bloc/availabletests_bloc.dart';
import 'package:adhyaya_application_new/utils/util_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTab1 extends StatelessWidget {
  const HomeTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) =>
          AvailabletestsBloc()..add(AvailableTestsGetEvent(isTrue: true)),
      child: Material(child:
          BlocBuilder<AvailabletestsBloc, AvailabletestsState>(
              builder: (context, state) {
        if (state is AvailabletestsLoaded) {
          return ListView.builder(
              itemCount: state.loadedTests.length,
              itemBuilder: (context, index) {
                return UtilWidgets().testTile(
                    model: state.loadedTests[index],
                    onTap: () {},
                    height: height / 3);
              });
        } else if (state is AvailabletestEmpty) {
          return Center(
            child: Text(state.message),
          );
        } else if (state is AvailabletestsInitial) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else {
          return const Center(child: Text('Something went terribly wrong'));
        }
      })),
    );
  }
}

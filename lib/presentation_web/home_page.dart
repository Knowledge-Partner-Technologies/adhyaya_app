import 'package:adhyaya_application_new/blocs/tests_bloc/availabletests_bloc.dart';
import 'package:adhyaya_application_new/data/models/get_tests_model.dart';
import 'package:adhyaya_application_new/presentation_web/test_screen.dart';
import 'package:adhyaya_application_new/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({Key? key}) : super(key: key);

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: [
            Align(
                alignment: Alignment.center,
                child: Text('Home', style: Styles.buttonStyle)),
            const SizedBox(width: 32.0),
            Align(
                alignment: Alignment.center,
                child: Text('Profile', style: Styles.buttonStyle)),
            const SizedBox(width: 32.0),
            Align(
                alignment: Alignment.center,
                child: Text('About US', style: Styles.buttonStyle)),
            const SizedBox(width: 32.0),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1610484826967-09c5720778c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHN0dWR5aW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.transparent,
                    child: Row(children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                          flex: 2,
                          child: Card(
                            elevation: 12.0,
                            child: testsAvailable(context),
                          )
                          // return Card(
                          //   elevation: 12.0,
                          //   child: testsAvailable(context),
                          // );
                          //  FutureBuilder<dynamic>(
                          //     future: getDocument(),
                          //     builder: (context, snapshot) {
                          //       if (snapshot.hasData == true &&
                          //           snapshot.connectionState ==
                          //               ConnectionState.done) {
                          //         return Card(
                          //           color: Colors.white,
                          //           elevation: 15.0,
                          //           child: Center(
                          //               child: Text(snapshot.data.toString())),
                          //         );
                          //       } else {
                          //         return const Center(
                          //             child:
                          //                 CircularProgressIndicator.adaptive());
                          //       }

                          //     }
                          //     )
                          ),
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                          flex: 2,
                          child: Card(
                            elevation: 12.0,
                            child: Container(
                              alignment: Alignment.center,
                              child: const Text('My Results'),
                            ),
                          )),
                      Expanded(flex: 1, child: Container()),
                    ]),
                  )),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ));
  }

  Padding testsAvailable(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Tests Available',
                  style: Styles.headingStyle,
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: BlocBuilder<AvailabletestsBloc, AvailabletestsState>(
                  builder: (context, state) {
                    if (state is AvailabletestsInitial) {
                      return const Center(
                          child: CircularProgressIndicator.adaptive());
                    } else if (state is AvailabletestsLoaded) {
                      return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state.loadedTests.length,
                        itemBuilder: (context, index) {
                          return testTile(
                              context: context,
                              model: state.loadedTests[index],
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TestScreenWeb(
                                            docId: state.loadedTests[index].id,
                                            testDuration: state
                                                .loadedTests[index].duration,
                                            testName: state
                                                .loadedTests[index].testName,
                                            requiredQ: state.loadedTests[index]
                                                .testQuestions)));
                              });
                        },
                      );
                    } else if (state is AvailabletestError) {
                      return Center(
                        child:
                            Card(elevation: 15.0, child: Text(state.message)),
                      );
                    } else if (state is AvailabletestEmpty) {
                      return Center(
                        child: Card(
                          elevation: 10.0,
                          child: Text(state.message),
                        ),
                      );
                    } else if (state is AvailabletestEmpty) {
                      return Center(
                        child: Card(
                          elevation: 10.0,
                          child: Text(state.message),
                        ),
                      );
                    } else {
                      return const Center(
                        child: Text('Something unexpected happend'),
                      );
                    }
                  },
                )),
          ]),
    );
  }

  Widget testTile(
      {required BuildContext context,
      required GetTestModel model,
      required VoidCallback onTap}) {
    return ListTile(
      leading: const Icon(Icons.book_rounded),
      title: Text(model.testName + model.id),
      subtitle: Text('${model.totalMarks} Marks ' '${model.duration} Minutes'),
      isThreeLine: true,
      trailing: ElevatedButton(
        child: const Text('Take Test'),
        onPressed: onTap,
      ),
    );
  }
}

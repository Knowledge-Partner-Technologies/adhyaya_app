import 'package:adhyaya_application_new/data/models/questions_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:adhyaya_application_new/blocs/questions_bloc/questions_bloc.dart';

class TestScreenWeb extends StatefulWidget {
  final String docId;
  final int requiredQ;
  final String testName;
  final int testDuration;

  const TestScreenWeb({
    Key? key,
    required this.docId,
    required this.requiredQ,
    required this.testName,
    required this.testDuration,
  }) : super(key: key);

  @override
  State<TestScreenWeb> createState() => _TestScreenWebState();
}

class _TestScreenWebState extends State<TestScreenWeb> {
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionsBloc>(
      create: (context) => QuestionsBloc()
        ..add(QuestionsEventGet(
          documentId: widget.docId,
          //  totalQuestions: widget.requiredQ
        )),
      child: Material(
        child: Row(children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: Card(
                elevation: 15.0,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.testName),
                              Text(widget.testDuration.toString()),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 9,
                        child: BlocBuilder<QuestionsBloc, QuestionsState>(
                            builder: (context, state) {
                          if (state is QuestionsInitial) {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          } else if (state is QuestionsSuccess) {
                            return ListView.builder(
                                itemCount: state.questions.length,
                                itemBuilder: (context, index) {
                                  return Text(state.questions[index].question
                                      .toString());
                                });
                          } else {
                            return const Center(
                                child: Text('Somethign went terribly wrong'));
                          }
                        })),
                  ],
                ),
              )),
          Expanded(flex: 1, child: Container()),
        ]),
      ),
    );
  }

  Widget questionTile(QuestionsModel qModel) {
    return Column(
      children: [Text(qModel.question)],
    );
  }
}

import 'dart:developer';

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
  String gVal = '';
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
                            return ListView.separated(
                                separatorBuilder: (context, index) {
                                  return const Divider();
                                },
                                itemCount: state.questions.length,
                                itemBuilder: (context, index) {
                                  return questionTile(state.questions[index], index + 1);

                                });
                          } else {
                            return const Center(
                                child: Text('Something went terribly wrong'));
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

  Widget questionTile(QuestionsModel qModel, int index) {
    return Container(
      height: 270.0,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(alignment: Alignment.centerLeft, child: Text(index.toString() + ' ' + qModel.question!)),
          ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: qModel.options!.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Radio(
                      activeColor: Colors.green,
                      value: qModel.options![index],
                      groupValue: qModel.submittedAnswer,
                      onChanged: (val) {
                        setState(() {
                          qModel.submittedAnswer = val.toString();
                        });
                        log(qModel.submittedAnswer.toString());
                      },
                    ),
                    title: Text(qModel.options![index]));
              }),
        ],
      ),
    );
  }
}

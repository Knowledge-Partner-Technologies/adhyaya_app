import 'package:flutter/material.dart';

class TestScreenWeb extends StatefulWidget {
  const TestScreenWeb({Key? key}) : super(key: key);

  @override
  State<TestScreenWeb> createState() => _TestScreenWebState();
}

class _TestScreenWebState extends State<TestScreenWeb> {
   int val = -1;
  @override
  Widget build(BuildContext context) {
    return Material(
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
                          children: const [
                            Text('General Knowledge'),
                            Text("60:00"),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 9,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('What is the capital of India?'),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: val,
                                        onChanged: (v) {
                                          v = val;
                                        }),
                                    title: const Text("Bengaluru"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 1,
                                        groupValue: val,
                                        onChanged: (v) { v = val;}),
                                    title: const Text("Mumbai"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 2,
                                        groupValue: val,
                                        onChanged: (v) { v = val;}),
                                    title: const Text("New Delhi"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 3,
                                        groupValue: val,
                                        onChanged: (v) { v = val;}),
                                    title: const Text("Kolkata"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                      'Who is the current prime minister of India?'),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Narendra Modi"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Sonia Gandhi"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Rahul Gandhi"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Arvind Kejriwal"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                      'Where does the Taj Mahal Located?'),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("New Delhi"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Mumbai"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Agra"),
                                  ),
                                  ListTile(
                                    leading: Radio(
                                        value: 0,
                                        groupValue: 0,
                                        onChanged: (v) {}),
                                    title: const Text("Hyderabad"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            )),
        Expanded(flex: 1, child: Container()),
      ]),
    );
  }
}

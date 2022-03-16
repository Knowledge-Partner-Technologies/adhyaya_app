
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Expanded(flex: 3, child: Container(color: Colors.blue,)),
                    Expanded(flex: 1, child: Container(color: Colors.green,)),
                    Expanded(flex: 2, child: Container(color: Colors.red,)),
                    Expanded(flex: 3, child: Container(color: Colors.purple,)),
                  ],
                ),
              )),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Card(
                                    elevation: 15.0,
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Published Tests',
                                        style: textStyle,
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.transparent,
                                  ))
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.transparent,
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Card(
                                    elevation: 15.0,
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Un-Published Tests',
                                        style: textStyle,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }

  TextStyle textStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

import 'package:adhyaya_application_new/presentation_web/test_screen.dart';
import 'package:adhyaya_application_new/utils/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
                          child: FutureBuilder<dynamic>(
                              future: getDocument(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData == true &&
                                    snapshot.connectionState ==
                                        ConnectionState.done) {
                                  return Card(
                                    color: Colors.white,
                                    elevation: 15.0,
                                    child: Center(
                                        child: Text(snapshot.data.toString())),
                                  );
                                } else {
                                  return const Center(
                                      child:
                                          CircularProgressIndicator.adaptive());
                                }

                                // return Card(
                                //   elevation: 12.0,
                                //   child: testsAvailable(context),
                                // );
                              })),
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
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.book_rounded),
                      title: const Text('General Knowledge'),
                      subtitle: const Text('90 Marks 60m'),
                      isThreeLine: true,
                      trailing: ElevatedButton(
                        child: const Text('Take Test'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TestScreenWeb()));
                        },
                      ),
                    ),
                  ],
                )),
          ]),
    );
  }

  Future<dynamic> getDocument() async {
    final result = FirebaseFirestore.instance.collection('tests_data');

    return result;
  }
}

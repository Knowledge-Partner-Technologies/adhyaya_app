import 'package:adhyaya_application_new/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Tests Available',
                                        style: Styles.generalTextGreen,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: ListView(
                                          children:  [
                                            ListTile(
                                              leading:  const Icon(Icons.abc, color: Colors.green),
                                                title:  const Text(
                                                    'General Knowledge Level 1'),
                                              subtitle: const Text('120 Marks, 60m'), trailing: ElevatedButton(onPressed: () {}, child: const Text('Take Test')),
                                                    ),
                                            ListTile(
                                                leading: const Icon(Icons.abc, color: Colors.green),
                                                title: const Text(
                                                    'General Knowledge Level 2'),
                                                 subtitle: const Text('100 Marks, 10m'),
                                              trailing: ElevatedButton(onPressed: () {}, child: const Text('Take Test')),
                                            ),
                                            ListTile(
                                                leading: const Icon(Icons.abc, color: Colors.green),
                                                title: const Text(
                                                    'General Knowledge Level 3'),  subtitle: const Text('100 Marks, 10m'), trailing: ElevatedButton(onPressed: () {}, child: const Text('Take Test')),),
                                          ],
                                        )),
                                  ]),
                            ),
                          )),
                      Expanded(flex: 1, child: Container()),
                      Expanded(		
                          flex: 2,
                          child: Card(
                            elevation: 12.0,
                            child: Container(),
                          )),
                      Expanded(flex: 1, child: Container()),
                    ]),
                  )),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ));
  }
}

import 'package:adhyaya_application_new/presentation_mob/create_test.dart';
import 'package:adhyaya_application_new/presentation_mob/home_tab1.dart';
import 'package:adhyaya_application_new/presentation_mob/home_tab2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        animationDuration: const Duration(seconds: 1),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Tests'),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Published',
              ),
              Tab(
                text: 'Un-Published',
              ),
            ]),
          ),
          body: const SafeArea(
              child: TabBarView(children: [HomeTab1(), HomeTab2()])),
          floatingActionButton:  FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreateTest())
              );
            },
          ),
        ));
  }
}

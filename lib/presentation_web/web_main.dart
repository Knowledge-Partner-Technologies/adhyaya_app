import 'package:adhyaya_application_new/presentation_web/login_signup.dart';
import 'package:flutter/material.dart';

class MyAppWeb extends StatelessWidget {
  const MyAppWeb({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adhyaya Student',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LoginPageWeb(),
    );
  }
}
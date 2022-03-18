
import 'package:adhyaya_application_new/presentation_mob/loign_screen.dart';
import 'package:flutter/material.dart';

class MyAppMob extends StatelessWidget {
  const MyAppMob({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adhyaya Student',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const LoginScreen(),
    );
  }
}

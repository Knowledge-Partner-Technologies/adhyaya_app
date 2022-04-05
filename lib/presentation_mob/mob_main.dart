
import 'package:adhyaya_application_new/blocs/timer_cubit/timer_cubit.dart';
import 'package:adhyaya_application_new/presentation_mob/loign_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppMob extends StatelessWidget {
  const MyAppMob({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adhyaya Student',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

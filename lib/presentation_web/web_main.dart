import 'package:adhyaya_application_new/blocs/tests_bloc/availabletests_bloc.dart';
import 'package:adhyaya_application_new/presentation_web/home_page.dart';
import 'package:adhyaya_application_new/presentation_web/login_signup.dart';
import 'package:adhyaya_application_new/presentation_web/test_screen.dart';
import 'package:adhyaya_application_new/presentation_web/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppWeb extends StatelessWidget {
  const MyAppWeb({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AvailabletestsBloc>(
          create: (context) =>
              AvailabletestsBloc()..add(AvailableTestsGetEvent(isTrue: true)),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adhyaya Student',

        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        // home: LoginPageWeb(),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPageWeb(),
          '/homepage': (context) => const HomePageWeb(),
          '/verifyOtp': (context) => VerifyOtpWeb(),
        },
      ),
    );
  }
}

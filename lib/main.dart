import 'package:adhyaya_application_new/presentation_mob/mob_main.dart';
import 'package:adhyaya_application_new/presentation_web/web_main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      // options: const FirebaseOptions(
      //     apiKey: "AIzaSyDhp2L1Alivoa9noJRfZgpWRdzFJ70bve4",
      //     authDomain: "adhyaya-app.firebaseapp.com",
      //     projectId: "adhyaya-app",
      //     storageBucket: "adhyaya-app.appspot.com",
      //     messagingSenderId: "84177703406",
      //     appId: "1:84177703406:web:9359a3c1b8df29fc6ebeff",
      //     measurementId: "G-HKSFV3T05S"),
      );

  if (kIsWeb) {
    runApp(const MyAppWeb());
  } else {
    runApp(const MyAppMob());
  }
}

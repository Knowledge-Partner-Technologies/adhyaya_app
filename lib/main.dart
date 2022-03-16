import 'package:adhyaya_application_new/presentation_mob/mob_main.dart';
import 'package:adhyaya_application_new/presentation_web/web_main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    runApp(const MyAppWeb());
  } else {
    runApp(const MyAppMob());
  }
}



import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'delayed_animation.dart';
import 'welcome_page.dart';
import 'Welcome_page2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


const d_red =Color.fromRGBO(233, 113, 125, 1);

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savebox',
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}





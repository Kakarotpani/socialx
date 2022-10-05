import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:socialx/views/landing_view.dart';
import 'firebase_setup/firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        unselectedWidgetColor: Colors.red,
      ),
      home: const LandingView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

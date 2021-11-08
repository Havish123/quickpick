import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quickpic/services/payment.dart';
import 'package:quickpic/views/register.dart';
import 'package:quickpic/views/schedule.dart';
import 'package:quickpic/views/userhome.dart';

import 'views/startinganim.dart';
import 'model/variable.dart' as vr;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: vr.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: Animate(),
      home: Animate(),
    );
  }
}

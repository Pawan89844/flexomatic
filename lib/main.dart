import 'package:flexomatic/screen/account/account.dart';
import 'package:flexomatic/screen/auth/login.dart';
import 'package:flexomatic/screen/auth/otp.dart';
import 'package:flexomatic/screen/home/home.dart';
import 'package:flexomatic/screen/splash/splash.dart';
import 'package:flexomatic/screen/troubleshooting/troubleshoot.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flexomatic',
      home: Splash(),
    );
  }
}

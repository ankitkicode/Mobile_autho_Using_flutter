import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/login.dart';
import 'package:project1/otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => myPhone(),
      'otp':(context) => myOtp(),
    },
  ));
}



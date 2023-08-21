import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authpage.dart';
import 'firebase/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    title: "Auth",
    debugShowCheckedModeBanner: false,
    home: AuthPage(),
  ));
}
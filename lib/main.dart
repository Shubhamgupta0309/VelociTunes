import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:velocitunes/screens/home_screen.dart';
import 'package:velocitunes/screens/signup_login_screen.dart';
import 'package:velocitunes/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => SignupLoginScreen(),
      },
      home: SplashScreen(), // Initial screen
    );
  }
}
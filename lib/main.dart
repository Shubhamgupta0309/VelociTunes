import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:velocitunes/screens/signup_login_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/signup': (context) => SignupLoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

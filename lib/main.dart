import 'package:dress_me_up/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dress me up',
       initialRoute: 'welcome',
       routes: {
        'login':(_)=>const LoginScreen(),
        'register':(_)=>const RegisterScreen(),
        'welcome':(_)=>const WelcomeScreen(),
       },
    );
  }
}
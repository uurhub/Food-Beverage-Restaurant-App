import 'package:flutter/material.dart';
import 'package:foodandbeverage/pages/sign_in_page.dart';
import 'package:foodandbeverage/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: routes,
      home: const SignInPage()
    );
  }
}


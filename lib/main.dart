import 'package:flutter/material.dart';
import 'package:propertyapp/detail_screen.dart';
import 'package:propertyapp/login_screen.dart';
import 'package:propertyapp/whish_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

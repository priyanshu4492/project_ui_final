import 'package:all_ui/kids_play_ui/kids_home.dart';
import 'package:all_ui/modern_signup_page.dart/signup_home.dart';
import 'package:all_ui/netflix_pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupHome(
        
      ),
    );
  }
}
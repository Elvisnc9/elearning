import 'package:elearning/Constraint/theme.dart';
import 'package:elearning/main_page.dart';
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
      title: 'ELearning',
      theme: darkTheme,
      home:const Homepage()
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_book_ur_tickets/pages/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Intro(),
    );
  }
}

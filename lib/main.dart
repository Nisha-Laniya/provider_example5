import 'package:flutter/material.dart';
import 'package:provider_example5/screens/home_page.dart';
import 'package:provider_example5/screens/theme_change.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThemeChange(),
    );
  }
}


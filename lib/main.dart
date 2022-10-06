import 'package:flutter/material.dart';
import 'package:notepad/normal.dart';
import 'package:notepad/pages.dart';
import 'package:notepad/person.dart';
import 'package:notepad/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dua Counter',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
      routes: {
        MyRoutes.home: (context) => MyHomePage(),
        // MyRoutes.person: (context) => Person(),
        MyRoutes.profile: (context) => Normal(),
      },
    );
  }
}

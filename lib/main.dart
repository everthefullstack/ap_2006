import 'package:atividade_pratica_2/android/pages/homepage.dart';
import 'package:atividade_pratica_2/android/pages/information.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Your body',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/information': (context) => const InformationPage(),
       }
    );
  }
}

void main() => runApp(const MyApp());

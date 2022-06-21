import 'package:atividade_pratica_2/android/pages/homepage.dart';
import 'package:atividade_pratica_2/android/pages/information.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Atividade 2',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/information': (context) => const InformationPage(),
       }
    );
  }
}

void main() => runApp(const MyApp());

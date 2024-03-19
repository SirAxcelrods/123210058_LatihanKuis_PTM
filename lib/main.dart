import 'package:flutter/material.dart';
import 'package:latihan_kuis/pages/login_page.dart';
import 'package:latihan_kuis/pages/home_page.dart';
import 'package:latihan_kuis/pages/detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Kuis',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}

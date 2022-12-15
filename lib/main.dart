import 'package:basic_bottom_navbar/navbar.dart';
import 'package:basic_bottom_navbar/pages/page_four.dart';
import 'package:basic_bottom_navbar/pages/page_one.dart';
import 'package:basic_bottom_navbar/pages/page_tree.dart';
import 'package:basic_bottom_navbar/pages/page_two.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const NavBar(),
        '/one': (context) => const PageOne(),
        '/two': (context) => const PageTwo(),
        '/tree': (context) => const PageTree(),
        '/four': (context) => const PageFour()
      },
    );
  }
}

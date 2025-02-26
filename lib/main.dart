import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MiNiApp());
}

class MiNiApp extends StatelessWidget {
  const MiNiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Ni ',
      home: HomePage(),
    );
  }
}

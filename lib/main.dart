import 'package:flutter/material.dart';
import 'package:sunwise_v2/features/home/presentation/pages/home_page.dart';
import 'package:sunwise_v2/features/splash/presentation/pages/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

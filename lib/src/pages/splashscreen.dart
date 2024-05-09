import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return s(
      backgroundColor: const Color.fromARGB(0, 0, 0, 1),
      body: Center(
        child: Image.asset('lib/assents/logoApp.png'),
      )
    );
  }
}
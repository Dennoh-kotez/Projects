// lib/main.dart
import 'package:flutter/material.dart';
import 'package:translink/screens/splash_screen.dart';
import 'package:translink/config/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TransLinkApp());
}

class TransLinkApp extends StatelessWidget {
  const TransLinkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TransLink',
      theme: TransLinkTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
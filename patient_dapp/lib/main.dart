import 'package:flutter/material.dart';
import './pages/bottom_nav.dart';
import './pages/Ppage.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const BottomNav(),
      '/profile': (context) => const Ppage(),
    });
  }
}

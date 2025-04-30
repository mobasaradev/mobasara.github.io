import 'package:flutter/material.dart';

import 'portfolio/view/portfolio.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0F1C),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.grey),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00FFFF),
          secondary: Color(0xFF9CA3AF),
        ),
      ),
      home: const PortfolioHomePage(),
    );
  }
}
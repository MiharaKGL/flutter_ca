import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const SpellAuraApp());
}

class SpellAuraApp extends StatelessWidget {
  const SpellAuraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpellAura the Book Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0D1B2A), // Dark blue magical theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B263B), // Lighter blue for AppBar
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF415A77), // Button color
            foregroundColor: Colors.white,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white70),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        ),
      ),
      home: const LoginPage(), // Setup the initial route
    );
  }
}

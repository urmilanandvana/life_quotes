import 'package:flutter/material.dart';
import 'package:life_quotes/screen/home_page.dart';
import 'package:life_quotes/screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: {
        '/': (context) => const HomePage(),
        'splash_screen': (context) => const SplashScreen(),
      },
    ),
  );
}

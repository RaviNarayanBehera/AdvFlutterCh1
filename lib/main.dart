import 'package:flutter/material.dart';

import 'component/Pages/stepper.dart';

void main() {
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
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const StepperExample(),
    );
  }
}


bool isDark = false;
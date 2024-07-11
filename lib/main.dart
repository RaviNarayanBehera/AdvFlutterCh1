import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/component/Pages/1.4/provider/home_provider.dart';
import 'package:theme/component/Pages/1.4/view/home_page.dart';
import 'component/Pages/stepper.dart';
import 'component/Pages/theme_change.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChangeThemeProvider(),
      builder: (context, child) =>  MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ChangeThemeProvider>(context).isLight
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
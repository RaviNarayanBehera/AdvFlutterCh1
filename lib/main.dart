import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/component/Pages/1.4/provider/home_provider.dart';
import 'package:theme/component/Pages/1.4/view/home_page1.dart';
import 'package:theme/component/Pages/1.4/view/home_page2.dart';
import 'package:theme/component/Pages/1.4/view/home_page3.dart';
import 'package:theme/component/Pages/1.4/view/home_page4.dart';
import 'package:theme/component/Pages/1.5/view/homp_page_view.dart';
import 'package:theme/component/Pages/1.6%20URL%20&%20Share_plus/provider/contact_provider.dart';
import 'package:theme/component/Pages/1.6%20URL%20&%20Share_plus/view/Contact_page.dart';
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
      create: (context) => ContactProvider(),
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactPage(),
        // Page4()
        // Page1(),
        // HomePage(),
      ),
    );
  }
}



// theme: ThemeData.light(),
// darkTheme: ThemeData.dark(),
// themeMode: Provider.of<ChangeThemeProvider>(context).isLight
//     ? ThemeMode.dark
//     : ThemeMode.light,
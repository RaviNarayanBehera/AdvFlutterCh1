import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 220,),
            const Center(child: Text('Yo Man!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),),
            const SizedBox(height: 15,),
            const Text("It's a simple example of \n \t\t\t\t\t\t\t\t\t\tdark theme",style: TextStyle(fontSize: 25),),
            const SizedBox(height: 35,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isDark = false;
                });
              },
              child: Container(
                height: 100,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent
                ),
                child: const Center(child: Text('Light Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                setState(() {
                  isDark = true;
                });
              },
              child: Container(
                height: 100,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent
                ),
                child: const Center(child: Text('Dark Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


bool isDark = false;
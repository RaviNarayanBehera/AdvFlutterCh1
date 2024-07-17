import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';
import 'listtile_list.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outline_outlined,
                size: 30,
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
              ),
              const SizedBox(height: 8,),
              const Text('Testing User',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              const SizedBox(height: 45,),
              ListTiles(
                name: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                    ? "Dark mode"
                    : "Light mode",
                icon: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                    ? Icons.mode_night
                    : Icons.sunny,
                color: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                    ? Colors.amber
                    : Colors.purple,
                isSwitchWant: true,
              ),
              ListTiles(
                  name: "Story",
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                      ? Colors.blue
                      : Colors.green,
                  icon: Icons.grid_on_sharp,
                  isSwitchWant: false),
              ListTiles(
                  name: "Setting and Privacy",
                  icon: Icons.settings,
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                      ? Colors.pinkAccent
                      : Colors.blue,
                  isSwitchWant: false),
              ListTiles(
                  name: "Help Center",
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                      ? const Color(0xffC9BC5C)
                      : const Color(0xffC26A64),
                  icon: Icons.message_outlined,
                  isSwitchWant: false),
              ListTiles(
                  name: "Notification",
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isLight
                      ? Colors.amber
                      : Colors.purple,
                  icon: Icons.notifications,
                  isSwitchWant: false),
            ],
          ),
        ),
      ),
    );
  }
}

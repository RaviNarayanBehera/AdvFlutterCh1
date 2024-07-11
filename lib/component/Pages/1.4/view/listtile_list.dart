import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';


class ListTiles extends StatelessWidget {
  const ListTiles({
    super.key,
    required this.name,
    required this.icon,
    required this.isSwitchWant,
    required this.color,
  });
  final String name;
  final IconData icon;
  final bool isSwitchWant;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 20,
      contentPadding: const EdgeInsets.all(5),
      // minVerticalPadding: 25,
      leading: Icon(
        icon,size: 25,
        color: color,
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
      ),
      trailing: (isSwitchWant)
          ? Switch(
        activeColor: Colors.amberAccent,
        inactiveThumbColor: Colors.purple,
        inactiveTrackColor: Colors.purple.shade50,
        value: Provider.of<ChangeThemeProvider>(context, listen: true)
            .isLight,
        onChanged: (value) {
          Provider.of<ChangeThemeProvider>(context, listen: false)
              .themeChange(value);
        },
      )
          : null,
    );
  }
}
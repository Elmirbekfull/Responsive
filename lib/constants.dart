import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[800],
  title: const Text(
    "Магазин кроссовок",
    style: TextStyle(color: Colors.white, fontSize: 18),
  ),
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: const Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          "Главная",
          style: TextStyle(letterSpacing: 3),
        ),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text(
          "Настройки",
          style: TextStyle(letterSpacing: 3),
        ),
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text(
          "Информация",
          style: TextStyle(letterSpacing: 3),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.logout,
        ),
        title: Text(
          "Выйти",
          style: TextStyle(
            letterSpacing: 3,
          ),
        ),
      ),
    ],
  ),
);

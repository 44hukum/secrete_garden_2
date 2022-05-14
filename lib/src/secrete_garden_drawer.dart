
import 'package:flutter/material.dart';
import 'package:secrete_garden/src/projects/projects.dart';

import 'about_secrete_garden.dart';
import 'cafe/cafe.dart';
import 'courses/courses.dart';
import 'map.dart';

class SecreteGardenDrawer extends StatelessWidget {
  const SecreteGardenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              image: DecorationImage(image: AssetImage('assets/logo.jpg')),
            ),
            child: Text(''),
          ),
          ListTile(
            tileColor: Colors.lightGreenAccent,
            title: const Text(
              'About Us',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              // Update the state of the app.
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AboutSecreteGarden()),
              );
              // ...
            },
          ),
          ListTile(
            tileColor: Colors.lightGreen,
            title: const Text(
              'What We Do',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Projects()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.lightGreen,
            title: const Text(
              'Get Involved',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Courses()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.lightGreen,
            title: const Text(
              'Our Cafe',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Cafe()),
              );
            },
          ),
          ListTile(
            tileColor: Colors.lightGreen,
            title: const Text(
              'Contact, Location & Hour',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Update the state of the app.
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecreteGardenMap()));
              // ...
            },
          ),
        ],
      ),
    ),);
  }
}

import 'dart:async';




import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:secrete_garden/registration.dart';
import 'package:secrete_garden/src/about_secrete_garden.dart';
import 'package:secrete_garden/src/cafe/cafe.dart';
import 'package:secrete_garden/src/courses/courses.dart';
import 'package:secrete_garden/src/map.dart';
import 'package:secrete_garden/src/projects/projects.dart';
import 'package:secrete_garden/src/shop/shop.dart';
import 'package:secrete_garden/src/volunteering/volunteering.dart';


import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Ideal time to initialize
  await Firebase.initializeApp();
 runApp(MyApp());
}

class MyApp extends StatelessWidget {


  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secrete Garden',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SecreteGardenForm()  //MyHomePage(title: 'Secret Garden')
      //
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.jpg'))),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
            child: const Text(
              "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University campus in Richmond",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
            child: const Text(
              "The focus of our garden is to provide a space that draws community groups," +
                  "organisations and individuals from all walks of life together in a welcoming" +
                  "environment that enables them to flourish and grow",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/atumfail.jpg'))),
          ),
          //OUR PROJECTS
          Container(
            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ourProject.jpg'))),
            child: TextButton(
              child: Text("Our Projects"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Projects()),
                );
              },
            ),
          ),
          //courses
          Container(
            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/courses.jpg'))),
            child: TextButton(
              child: Text("Courses"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Courses()),
                );
              },
            ),
          ),
          //CAFE
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/ourcafe.jpg'))),
            child: TextButton(
              child: Text("our cafe"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cafe()),
                );
              },
            ),
          ),
          //VOLUNTERRING
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/volunterring.jpg'))),
            child: TextButton(
              child: Text("volunteering"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Volunteering()),
                );
              },
            ),
          ),

          //Details
          Container(
            height: 70,
            alignment: Alignment.center,
            child: ColoredBox(
              color: Colors.lightGreen,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Opening Hour",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Monday: 9am – 3pm",
                          style: const TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Tuesday – Saturday: 9am – 4pm",
                          style: const TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Location",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Clydesdale Lane, Richmond NSW 2753",
                          style: const TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "On the Western Sydney University campus",
                          style: const TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ]),
            ),
          ),
          //Details

          Container(
            alignment: Alignment.center,
            child: ColoredBox(
              color: Colors.lightGreen.shade50,
              child: Column(children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/abc.png'))),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 30, 20, 3),
                  child: const Text(
                    "North West Disability Services ",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
                  child: const Text(
                    "The Secret Garden & Nursery is managed by North West Disability Services (NWDS), a not-for-profit community organisation established in 1982. NWDS is a registered Charity and Public Benevolent Institution and is governed by a volunteer Board of Directors.",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 20, 30),
                  child: const Text(
                    "NWDS believes in the right of people with disabilities to live a full and valuable life within the community. NWDS fully implements and advocates for the appli­cation of the Disability Service Act and Disability Service Standards and complies with all Local, State and Com­monwealth Government requirements.",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),

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
                  MaterialPageRoute(builder: (context) => AboutSecreteGarden()),
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
                  MaterialPageRoute(builder: (context) => Projects()),
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
                  MaterialPageRoute(builder: (context) => Courses()),
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
                  MaterialPageRoute(builder: (context) => Cafe()),
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
            ListTile(
              tileColor: Colors.lightGreen,
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {

                FirebaseAuth.instance.signOut().then((value){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecreteGardenForm()));
                });
                // Update the state of the app.

                // ...
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.umbrella), label: 'About Us'),
             BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
        ],
        onTap: (int index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecreteGardenMap()),
            );
          }
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage(title: "The Secrete Garden")),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutSecreteGarden()),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Shop()),
            );
          }

        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

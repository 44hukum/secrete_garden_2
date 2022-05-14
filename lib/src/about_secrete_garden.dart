import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secrete_garden/src/cafe/cafe.dart';
import 'package:secrete_garden/src/courses/courses.dart';
import 'package:secrete_garden/main.dart';
import 'package:secrete_garden/src/map.dart';
import 'package:secrete_garden/src/projects/projects.dart';
import 'package:secrete_garden/src/shop/shop.dart';

import '../registration.dart';

class AboutSecreteGarden extends StatefulWidget {
  const AboutSecreteGarden({Key? key}) : super(key: key);

  @override
  State<AboutSecreteGarden> createState() => _AboutSecreteGardenState();
}

class _AboutSecreteGardenState extends State<AboutSecreteGarden> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('About us'),
          backgroundColor: Colors.lightGreen,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/project/aboutus/aboutus1.jpg'))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: Text(
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
                "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University, Hawkesbury and managed by North West Disability Services (NWDS). We are located in Clydesdale Lane on the Western Sydney University campus, Richmond, NSW. Our facilities utilise reverse integration to bring the community into an environment that supports a range of programs for people with a disability, school children, aged members of our community, students, volunteers and the whole community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/project/aboutus/aboutus.png'))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
              child: const Text(
                "The focus of the Secret Garden is to provide a space that draws community groups, organisations and individuals together in a learning environment to develop the very best ways for our society and community to live, work and play in a way that is sustainable. The Secret Garden is a welcoming mix of a wide range of people from our community who find that being at the garden has enabled them to flourish and grow, while they develop their own interest areas and generate opportunities for the community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
              child: const Text(
                "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University, Hawkesbury and managed by North West Disability Services (NWDS). We are located in Clydesdale Lane on the Western Sydney University campus, Richmond, NSW. Our facilities utilise reverse integration to bring the community into an environment that supports a range of programs for people with a disability, school children, aged members of our community, students, volunteers and the whole community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
              child: const Text(
                "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University, Hawkesbury and managed by North West Disability Services (NWDS). We are located in Clydesdale Lane on the Western Sydney University campus, Richmond, NSW. Our facilities utilise reverse integration to bring the community into an environment that supports a range of programs for people with a disability, school children, aged members of our community, students, volunteers and the whole community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
              child: const Text(
                "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University, Hawkesbury and managed by North West Disability Services (NWDS). We are located in Clydesdale Lane on the Western Sydney University campus, Richmond, NSW. Our facilities utilise reverse integration to bring the community into an environment that supports a range of programs for people with a disability, school children, aged members of our community, students, volunteers and the whole community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
              child: const Text(
                "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University, Hawkesbury and managed by North West Disability Services (NWDS). We are located in Clydesdale Lane on the Western Sydney University campus, Richmond, NSW. Our facilities utilise reverse integration to bring the community into an environment that supports a range of programs for people with a disability, school children, aged members of our community, students, volunteers and the whole community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/project/aboutus/aboutus2.jpg'))),
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
        ),
      ),
    );
  }
}

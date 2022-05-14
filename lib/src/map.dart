
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:secrete_garden/src/about_secrete_garden.dart';
import 'package:secrete_garden/src/cafe/cafe.dart';
import 'package:secrete_garden/src/courses/courses.dart';
import 'package:secrete_garden/main.dart';
import 'package:secrete_garden/src/projects/projects.dart';


class SecreteGardenMap extends StatefulWidget {
  @override
  _SecreteGardenMapState createState() => _SecreteGardenMapState();
}

class _SecreteGardenMapState extends State<SecreteGardenMap> {
  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  final marker = Marker(
    markerId: MarkerId('the_secrete_garden'),
    position: LatLng(-33.61860985940949, 150.75213084770735),
    icon: BitmapDescriptor.defaultMarker,
    infoWindow: InfoWindow(
      title: 'The Secrete garden',
      snippet: 'address',
    ),
  );

  static const LatLng _center = const LatLng(-33.61860985940949, 150.75213084770735);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);

    setState(() {
      markers[MarkerId('place_name')] = marker;
    });

  }

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
          title: Text('Contact, Location & Hour'),
          backgroundColor: Colors.lightGreen,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 20, 3),
              child: const Text(
                "The Secret Garden",
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
            //contact
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 20, 3),
              child: const Text(
                "Clydesdale Lane, Richmond NSW 2753 On the Western Sydney University campus",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),

              ),
            ),
            //map
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
              height: 400,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 14.0,
                ),
                markers: markers.values.toSet(),
              ),
            ),

            //Directions
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 3),
              child: const Text(
                "Directions: ",
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
                "From the Londonderry Road entrance to WSU Hawkesbury:",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "– Take Vines Drive",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "– Continue to end of Vines Drive, Clydesdale Lane is straight ahead",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
              child: const Text(
                "From the Bourke Street/College Drive Entrance to WSU:",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "– Turn LEFT into Castle Road",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "– LEFT into Science Road",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "– RIGHT into Resource Road",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "– LEFT into Clydesdale Lane",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            //Inqueries
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 3),
              child: const Text(
                "For all enquiries please contact:",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
                         ),
            ),
            //disability
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
              child: const Text(
                "North West Disability Services",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
             ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "02 9686 4155",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),

            //secrete garden
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
              child: const Text(
                "The Secret Garden",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "For plant sales and general garden enquires:",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "0414 784 460",
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
            //the one mile kitchen
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
              child: const Text(
                "The One Mile Kitchen Café",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "For café enquiries, bookings and garden tour bookings:",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "02 9686 4155 – ask for Caroline at Opal Cottage",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
              child: const Text(
                "Email: secretgarden@nwds.org.au",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

              //Opening HOUR
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 3),
              child: const Text(
                "Opening Hours:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //Monday: 9am – 3pm
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 3),
              child: const Text(
                "Monday: 9am – 3pm",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "Tuesday – Saturday: 9am – 4pm",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            //sunday
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
              child: const Text(
                "Sunday: Closed",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

  //Opening HRS
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 3),
              child: const Text(
                "Café Opening Hours:",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
              child: const Text(
                "Monday – Saturday: 10.00am – 2.00pm",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),

            //map



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
                tileColor: Colors.lightGreen,
                title: const Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Update the state of the app.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AboutSecreteGarden()),
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
                        builder: (context) => Projects()),
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
                        builder: (context) => Courses()),
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
                        builder: (context) => Cafe()),
                  );
                },
              ),
              ListTile(
                tileColor: Colors.limeAccent,
                title: const Text(
                  'Contact, Location & Hour',
                  style: TextStyle(color: Colors.black),
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
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            BottomNavigationBarItem(
                icon: Icon(Icons.umbrella), label: 'The Garden'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact')
          ],
          onTap:(int index){
            if(index == 2){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecreteGardenMap()),
              );
            }if(index == 0){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }

            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutSecreteGarden()),
              );
            }
          } ,
        ),
      ),
    );
  }
}
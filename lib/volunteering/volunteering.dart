import 'package:flutter/material.dart';

class Volunteering extends StatelessWidget {
  const Volunteering({Key? key}) : super(key: key);

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Volunteering'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/v1.jpg'))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/v2.png'))),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 0),
              child: const Text(

                "Volunteering",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
              "The Secret Garden would not survive without the help of our wonderful volunteers! We need many hands and plenty of inspiration to make our garden flourish.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "And there are plenty of great benefits for our Volunteers too… here’s what some of our Volunteers had to say when we asked them why they are involved with the Secret Garden:",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 20, 0),
              child: const Text(

                "Can you help ?",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
            "The Secret Garden is always keen to recruit new volunteers with special skills (or just a can-do attitude!) to come and join us. Whether you can give one hour or one week, or whether you are 15 or 105, we value your skills and appreciate all help. Some of the benefits can include:",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),

            Container(
                margin: const EdgeInsets.fromLTRB(30, 3, 0, 0),
                child: Column(
                  children: <Widget>[
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Making new friends'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Gaining new skills'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Being part of a friendly, fun community'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Gardening is great for keeping active, improving health and wellbeing'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('No commitment… come as often or as little as you please'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Volunteers of all ages, backgrounds and abilities are welcome'),
                    ),
                  ],


                )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/v3.jpg'))),
            ),
          ],
        )
    );
  }
}
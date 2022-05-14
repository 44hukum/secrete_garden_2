import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Projects'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/project.jpg'))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/project1.jpg'))),

            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 0),
              child: const Text(

                "Projects",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //Project Container 1
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 0),
              child: Text(
                "Current projects in operation at the Secret Garden:",
                style: const TextStyle(
                    fontSize: 14,
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
                      title: new Text('Plant propagation'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Nursery plant sales'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Plant propagation'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Riding for the Disabled'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Men’s Shed'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Bee Hotel making'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Candle making'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Farmyard husbandry'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Free range poultry'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Tiny House project'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('One Mile Kitchen catering'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Garden and site tours'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Croquet on the Village Green'),
                    ),

                  ],
                )
            ),


            //Future Projects
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Projects in development future projects:",
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),

              ),
            ),


            Container(
                margin: const EdgeInsets.fromLTRB(30, 3, 20, 0),
                child: Column(
                  children: <Widget>[
                    new ListTile(
                        leading: Icon(Icons.fiber_manual_record),
                        title: new Text('¼ Acre Lot/Permaculture')
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Nursery plant sales'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Wicking vegetable growing and sales'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Garden sculpture'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Butterfly Kisses Remembrance garden'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Therapy yurt, equine facilitated therapy paddock'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Push bike repair and reuse'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Lost Arts Workshops'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Fitness and activity centre'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Water capture and reuse'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Secret Garden maze'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Walled garden and raised beds'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Reclaimed building products'),
                    ),

                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 3, 30),
              child: const Text(
                "If you are interested in any of the above projects, or may be able to help us make them a reality, please get in touch with North West Disability Services on 02 9686 4155 or email  enquiries@nwds.org.au",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,


                ),
              ),
            ),

          ],
        )
    );
  }
}
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Courses'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/course.jpg'))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/images/course2.png'))),
            ),
          //Data
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 0),
              child: const Text(

                "Courses",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 20, 0),
              child: Text(
                "The Secret Garden offers training and educational courses for the whole community in a wide range of areas including:  ",
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
                      title: new Text('Horticulture'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Permaculture'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Animal husbandry'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Fruit and vegetable production'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Sustainability'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Specialised engagement for individuals with a disability'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Make my Garden Grow – presented by Garden Clubs (Surviving Summer, Autumn Action for Colour, Winter Work Routines, Spruce up for Spring)'),
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
            Container(
              margin: const EdgeInsets.fromLTRB(30, 3, 3, 30),
              child: const Text(
                "For more information about courses at the Secret Garden, please call North West Disability Services on 02 9686 4155 or email enquiries@nwds.org.au",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,


                ),
              ),
            ),


            //END OF DATA


          ],
        )
    );
  }
}
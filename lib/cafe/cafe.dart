import 'package:flutter/material.dart';

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Cafe'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/project/images/cafe1.jpg'))),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: const Text(

                "One Mile Kitchen Café",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Café Opening Hours:",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),

              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "Monday – Saturday",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "10.00am – 2.00pm",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),


            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
              "Our ‘One Mile Kitchen Café’ is located in a beautiful mud brick building which provides a relaxed atmosphere within our lovely garden setting. We offer morning teas and hot lunches daily as well as delicious salads in the Summer. The café adjoins a fenced play area for children to enjoy while you relax over a cuppa.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/project/images/cafe2.jpg'))),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
              "The café is run by qualified Barista staff who also train and support people with disability to work in the café. The training provides our participants and volunteers with the opportunity to learn and practice a full range of skills including:",
                  style: TextStyle(
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
                      title: new Text('Food preparation'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Cooking'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Baking'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Customer service'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Money skills'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Cleaning and maintenance'),
                    ),
                    new ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: new Text('Food safety and hygiene'),
                    ),
                  ],


                )
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
          "We welcome groups such as Probus, Garden Clubs, Aged Care residents, Mother’s Groups and all facets of Community Organisations to book in for morning tea or lunch. Enjoy our beautiful serene setting, engage in a range of activities or take a tour of our extensive 15 acre site. As the garden is fully accessible you are welcome to take a self-guided tour of the garden and enjoy our environment.",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 30),
              child: Text(
                "For all enquiries and group bookings, please call North West Disability Services on 02 9686 4155 – ask for Caroline at Opal Cottage",
            style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),



          ],
        ));
  }
}

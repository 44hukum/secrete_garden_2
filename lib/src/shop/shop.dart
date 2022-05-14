import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Our Shop'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/overview.jpg'))),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: const Text(

                "Secret Garden Nursery",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Our nursery sells an enormous range of excellent quality plants at very reasonable prices. We have everything from drought-tolerant succulents and natives to gorgeous salvias and cottage garden ‘pretties’.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Many of our plants are unusual and some quite rare, so if there is something in particular you are seeking please don’t hesitate to ask our helpful and friendly staff. Feel free to browse through our selection of herbs, natives, shade lovers, trees, exotics, succulents, water-wise plants, hedging, ornamental grasses and cottage garden favourites.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "The majority of our plants are propagated and nurtured on-site by our staff, wonderful volunteers and program participants. This means that our plants are ideally suited to our climate here in the Hawkesbury – in fact customers often comment that they have found our plants are so much hardier then those purchased elsewhere!",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "All profits from the sale of our plants go directly back into providing our services to the community. The Secret Garden doesn’t receive any government funding, so we rely upon our sales to survive. So when you select plants from our nursery, you’re not only getting great quality plants at competitive prices, you are also supporting our not-for-profit mission to care for people in our community.",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 20, 0),
              child: const Text(

                "Just some of the plants we sell:",
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.normal),
              ),
            ),

            //IMAGES
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/Gazania.jpg'))),
            ),
            Center(child: Text("Gazania",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),

            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/Hedging.jpg'))),
            ),
            Center(child: Text("Hedging",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),

            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/Herbs.jpg'))),
            ),
            Center(child: Text("Herbs",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),

            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/Hydrangea.jpg'))),
            ),
            Center(child: Text("Hydrangea",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),

            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/lavender.jpg'))),
            ),
            Center(child: Text("Lavender",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),


            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/Natives.jpg'))),
            ),
            Center(child: Text("Natives",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),


            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/salvia.jpg'))),
            ),
            Center(child: Text("Salvia",style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),


            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 3),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image:
                  DecorationImage(image: AssetImage('assets/project/shop/Succulents.jpg'))),
            ),
            Center(child: Text("Succulents", style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.normal),)),


            //END OF IMAGES



            //price
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Plant Price Guide",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold),

              ),
            ),


            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "200mm (8”) pot – \$12",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "175mm (7”) pot – \$10",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "150mm (6”) pot – \$8",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "125mm (5”) pot – \$7",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "100mm (4”) pot – \$5",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "Large tube – \$4",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: Text(
                "Small tube/veggie seedling – \$2",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),

              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Please note: Prices listed are general and exceptions are marked accordingly",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic
                ),

              ),
            ),

    //contact

            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 0),
              child: Text(
                "Visit us or get in touch",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold),

              ),
            ),

            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 20, 30),
              child: Text(
                "If you need inspiration or advice on our huge range of plants, our friendly staff and volunteers are happy to help! Or for more information, give us a call today on 0414 784 460",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                 ),

              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.grey.shade800,
                          size: 30,
                        )),
                    Text(
                      "Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                          fontSize: 22),
                    ),
                    Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.pink,
                      size: 30,
                    )
                  ]),
            ),
            //images
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/images/skin_oil_surem.jpg"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.brown.shade500,
                            borderRadius: BorderRadius.circular(30)),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "2/5",
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade300),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //productName
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skin Oil Serum",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$39.99",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.orange.shade600,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            //rating
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        "\t4.5",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade800),
                      ),
                      Text(
                        "\t(286 review)",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade800),
                      ),
                    ],
                  ),
                  Text(
                    "150 ml",
                    style: TextStyle(fontSize: 19, color: Colors.grey.shade800),
                  )
                ],
              ),
            ),
            //description
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Serum skin oil is extraordinary oil hair serum gives luscious, lightweight hair oil serum for dry hair and lifeless hair ......",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
            ),

            //feature
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Use Type",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Full body",
                        style: TextStyle(
                            fontSize: 19, color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Scent",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Coconut",
                        style: TextStyle(
                            fontSize: 19, color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Liquid Volume",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "100 ml",
                        style: TextStyle(
                            fontSize: 19, color: Colors.grey.shade600),
                      )
                    ],
                  )
                ],
              ),
            ),

            //box
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                  child: Text(
                "Shop Now",
                style: TextStyle(fontSize: 20,color: Colors.grey.shade200,fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}

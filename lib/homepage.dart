import 'package:beauty_product_ecommerce_app/categories.dart';
import 'package:beauty_product_ecommerce_app/product_card.dart';
import 'package:beauty_product_ecommerce_app/product_detail.dart';
import 'package:beauty_product_ecommerce_app/product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.grey.shade700,
                  ),
                  Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.grey.shade700,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
            ),

            //categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Categories(
                    catName: "Women",
                  ),
                  Categories(
                    catName: "Kids",
                  ),
                  Categories(
                    catName: "Cream",
                  ),
                  Categories(
                    catName: "Face Wash",
                  ),
                  Categories(
                    catName: "Oil",
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(fontSize: 19, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    productName: "Hair Serum Oil",
                    imagePath: "lib/images/hair_serum.jpg",
                    newPrice: 25.99,
                    oldPrice: 44.99,
                  ),
                  ProductCard(
                    productName: "Organic Oil",
                    imagePath: "lib/images/organic_oil.jpg",
                    newPrice: 32.99,
                    oldPrice: 61.99,
                  ),
                  ProductCard(
                    productName: "Natural Lip Oil",
                    imagePath: "lib/images/lip_oil.jpg",
                    newPrice: 28.50,
                    oldPrice: 48.99,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Recent Products",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            Expanded(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      child: ProductTile(
                        productName: "Skin Oil Serum",
                        productImage: "lib/images/skin_oil_surem.jpg",
                        productPrice: "29.99",
                        productRating: "4.4",
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
                      },
                    ),
                    ProductTile(
                      productName: "Natural Beauty Cream",
                      productImage: "lib/images/natural_beauty_cream.jpg",
                      productPrice: "35.99",
                      productRating: "4.2",
                    ),
                    ProductTile(
                      productName: "Pump Dispenser",
                      productImage: "lib/images/pump_dispenser.jpg",
                      productPrice: "49.99",
                      productRating: "3.9",
                    ),
                    ProductTile(
                      productName: "Miss Dior",
                      productImage: "lib/images/perfume.jpg",
                      productPrice: "79.39",
                      productRating: "4.6",
                    )
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}


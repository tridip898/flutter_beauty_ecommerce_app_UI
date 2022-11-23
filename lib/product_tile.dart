import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productRating;
  const ProductTile({Key? key, required this.productName, required this.productImage, required this.productPrice, required this.productRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 7),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.36,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(productImage),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade100.withOpacity(0.7),
                    blurRadius: 20,
                    spreadRadius: 10,
                    offset: Offset(10, 10)
                  )
                ]
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productName,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.orange,),
                            Text(productRating,style: TextStyle(fontSize: 18,color: Colors.grey.shade700),),
                            Text("\t(287 reviews)",style: TextStyle(fontSize: 18,color: Colors.grey.shade700),)
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$"+productPrice,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange.shade500),),
                        Icon(Icons.favorite_border_rounded,color: Colors.pink,)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

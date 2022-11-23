import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final double oldPrice;
  final double newPrice;
  const ProductCard({Key? key, required this.imagePath, required this.productName, required this.oldPrice, required this.newPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.44,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            productName,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          RichText(
            text: TextSpan(text: "\$"+newPrice.toString()+"\t\t\t\t\t",style: TextStyle(fontSize: 18,color: Colors.grey.shade800),
                children:[
                  TextSpan(
                      text: "\$"+oldPrice.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.redAccent.shade700,
                          decoration: TextDecoration.lineThrough)
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }
}

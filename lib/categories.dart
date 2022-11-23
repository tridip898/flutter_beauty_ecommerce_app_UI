import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String catName;
  const Categories({Key? key, required this.catName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
            color: Colors.brown.shade500,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade500,width: 2),
        ),
        child: Text(catName,style: TextStyle(fontSize: 22,color: Colors.grey.shade200),),
      ),
    );
  }
}

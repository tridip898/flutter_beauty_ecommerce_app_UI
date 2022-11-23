import 'package:flutter/material.dart';

import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
                  image: DecorationImage(image: AssetImage("lib/images/coc.jpg"),fit: BoxFit.fill)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("lib/images/store.png",height: 120,),

                  ),
                  SizedBox(width: 8,),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("laButy\nCosmetics\nStore",style: TextStyle(color: Colors.green.shade900, fontWeight: FontWeight.bold,fontSize: 40,fontFamily: "Times New roman"),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom: 20,top: 10),
              child: Text("We deliver in just\n8-10 days worldwide",style: TextStyle(fontSize: 25,color: Colors.green.shade800),),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.green.shade900,
                    borderRadius: BorderRadius.circular(15)),
                child: Align(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(fontSize: 20,color: Colors.grey.shade200,fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

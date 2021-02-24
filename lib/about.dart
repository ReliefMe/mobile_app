import "package:flutter/material.dart";
import './widgets/my_drawer.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Virufy'),
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Text(
              "Our Mission",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
              padding: EdgeInsets.only(left: 6.0, right: 6.0),
              child: Text(
                  "   A tiny virus has brought society to a halt, while teaching us that we need to forget about fame and fortune and instead unite as a species globally!",
                  style: TextStyle(fontSize: 16))),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.only(left: 6.0, right: 6.0),
            child: Text(
                "   Our vision is to develop a smartphone app that can be used by everyone in the world to find out in minutes whether they have COVID-19. We are utilizing cutting-edge artificial intelligence technology to identify patterns undetectable by humans from the unique respiratory signatures of lungs damaged by the virus. From extensive research, we believe we can achieve 90% or more accuracy and bring an end to this pandemic!",
                style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 7.0,),
          Container(
            padding: EdgeInsets.only(left: 6.0, right: 6.0),
            child: Text("We hope to create a near future with:",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 7.0,),
          Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text("1. Billions of people at home confidently knowing they are not infected",style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text("2. Reduced burden on health care systems, equipped with technology to know who to treat first",style: TextStyle(fontSize: 16)),
          ),
          Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text("3. Eliminated necessity of social distancing and lockdowns",style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

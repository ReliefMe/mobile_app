import 'package:flutter/material.dart';
import './widgets/my_drawer.dart';

class Team extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
        title: Text('Virufy'),
      ),
      drawer: MyDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Our Team",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20,right:10),
                child: Text(
                    "A global team of entrepreneurs, technologists, and volunteers.",
                    style: TextStyle(fontSize: 16))),
          ],
        ));
  }
}

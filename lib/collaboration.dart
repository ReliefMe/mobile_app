import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import './widgets/my_drawer.dart';

class Collaborators extends StatelessWidget {

  _jigjp() async {
    const url = 'https://jig.jp/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _ssuet() async {
    const url = 'https://ssuet.edu.pk/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _ned() async {
    const url = 'https://www.neduet.edu.pk/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _dice() async {
    const url = 'https://dicepakistan.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virufy'),
      ),
      drawer: MyDrawer(),
      body: ListView(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              "Our Collaborators",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "In collaboration with Silicon Valley, Japan, and Pakistan.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              child: Image.asset('assets/images/jigjp_logo.png'),
              width: 150,
              height: 150,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  "jig.jp",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    onTap: _jigjp,
                    child: Text('https://jig.jp/',
                        style: TextStyle(fontSize: 15, color: Colors.blue)),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/images/ssuet_logo.jpg'),
              width: 150,
              height: 150,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Sir Syed UET",
                  style: TextStyle(fontSize: 28),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    onTap: _ssuet,
                    child: Text('https://ssuet.edu.pk/',
                        style: TextStyle(fontSize: 15, color: Colors.blue)),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/images/ned_logo.png'),
              width: 150,
              height: 150,
            ),
            Column(
              children: <Widget>[
                Text(
                  "NED UET",
                  style: TextStyle(fontSize: 28),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    onTap: _ned,
                    child: Text('https://www.neduet.edu.pk/',
                        style: TextStyle(fontSize: 15, color: Colors.blue)),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/images/dice_logo.jpg'),
              width: 150,
              height: 150,
            ),
            Column(
              children: <Widget>[
                Text(
                  "DICE Pakistan",
                  style: TextStyle(fontSize: 28),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    onTap: _dice,
                    child: Text('https://dicepakistan.org/',
                        style: TextStyle(fontSize: 15, color: Colors.blue)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

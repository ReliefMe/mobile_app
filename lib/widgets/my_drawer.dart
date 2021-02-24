import "package:flutter/material.dart";
import '../about.dart';
import '../collaboration.dart';
import '../team.dart';
import '../main.dart';
import 'package:url_launcher/url_launcher.dart';


class MyDrawer extends StatelessWidget {

   _launchWebsite() async {
    const url = 'http://reliefme.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
            new ListTile(
              title: new Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyApp()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text('About'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new About()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text('Team'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Team()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text('Sponsors'),
              onTap: () {},
            ),
            new Divider(),
            new ListTile(
              title: new Text('Collaborators'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new Collaborators()));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text('Our Website'),
              onTap: _launchWebsite,
            ),
          ],
        ),
      );
  }
}
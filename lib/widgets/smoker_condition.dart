import "package:flutter/material.dart";
import '../record_sample.dart';



class Smoker extends StatefulWidget {
  Smoker({Key key}) : super(key: key);

  @override
  _SmokerState createState() => _SmokerState();
}

class _SmokerState extends State<Smoker> {
  String smoker = '';

  RecordSample obj = RecordSample();

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Yes',style: TextStyle(fontSize:12)),
          leading: Radio(
            value: "yes",
            groupValue: smoker,
            onChanged: (val) {
              smoker = val;
              setState(() {});
            },
          ),
        ),
        ListTile(
          title: const Text('No',style: TextStyle(fontSize:12)),
          leading: Radio(
            value: "no",
            groupValue: smoker,
            onChanged: (val) {
              smoker = val;
              setState(() {
                obj.setSmoker = smoker;
              });
            },
          ),
        ),
      ],
    );
  }
}
import "package:flutter/material.dart";
import '../record_sample.dart';



class Lungs extends StatefulWidget {
  Lungs({Key key}) : super(key: key);

  @override
  _LungsState createState() => _LungsState();
}

class _LungsState extends State<Lungs> {
  String lungs = '';

  RecordSample obj = RecordSample();

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Yes',style: TextStyle(fontSize:12)),
          leading: Radio(
            value: "yes",
            groupValue: lungs,
            onChanged: (val) {
              lungs = val;
              setState(() {
                obj.setLungs = val;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('No',style: TextStyle(fontSize:12)),
          leading: Radio(
            value: "no",
            groupValue: lungs,
            onChanged: (val) {
                lungs = val;    
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
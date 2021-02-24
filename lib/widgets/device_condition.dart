import "package:flutter/material.dart";
import '../record_sample.dart';


// enum SingingCharacter { yes , no}

class Device extends StatefulWidget {
  Device({Key key}) : super(key: key);

  @override
  _DeviceState createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  // SingingCharacter _character = SingingCharacter.yes;
  String device = '';

  String get devicee{
    return device;
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Yes',style: TextStyle(fontSize:12)),
          leading: Radio(
            value: "yes",
            groupValue: device,
            onChanged: (val) {
              device = val;
              setState(() {});
            },
          ),
        ),
        ListTile(
          title: const Text('No',style: TextStyle(fontSize:12)),
          leading: Radio(
            value: "no",
            groupValue: device,
            onChanged: (val) {
              device = val;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
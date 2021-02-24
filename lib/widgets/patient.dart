import "package:flutter/material.dart";
import '../record_sample.dart';

// enum SingingCharacter { yes, no }

class Patient extends StatefulWidget {
  Patient({Key key}) : super(key: key);

  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  // SingingCharacter _character = SingingCharacter.yes;
  String patient = '';

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Yes', style: TextStyle(fontSize: 12)),
          leading: Radio(
            value: "yes",
            groupValue: patient,
            onChanged: (val) {
                patient = val;
              setState(() {
                // patient = value.toString();
                // Navigator.of(context).push(MaterialPageRoute(
                // builder: (context) => RecordSample(patient: patient),
                // ));
              });
            },
          ),
        ),
        ListTile(
          title: const Text('No', style: TextStyle(fontSize: 12)),
          leading: Radio(
            value: "no",
            groupValue: patient,
            onChanged: (val) {
              patient = val;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

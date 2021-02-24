import "package:flutter/material.dart";
import '../record_sample.dart';
import '../models/patient_record.dart';

// enum SingingCharacter { male , female ,other}

class Gender extends StatefulWidget {
  Gender({Key key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

String _gender = '';

// PatientRecord obj = PatientRecord();
RecordSample obj = RecordSample();

//  String get my_gender{
//     return _gender.toString();
//   }

//     set my_gender(String genderr){
//     _gender = genderr;
// }

class _GenderState extends State<Gender> {
  // SingingCharacter _character = SingingCharacter.male;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Male', style: TextStyle(fontSize: 12)),
          leading: Radio(
            value: "male",
            groupValue: _gender,
            onChanged: (val) {
              _gender = val;
              // obj.setGender = _gender;
              

              setState(() {
                // print("${obj.getGender}");
                obj.setGender = _gender;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Female', style: TextStyle(fontSize: 12)),
          leading: Radio(
            value: "female",
            groupValue: _gender,
            onChanged: (val) {
              _gender = val;
              
              // obj.setGender = _gender;
              setState(() {
                obj.setGender = _gender;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Other', style: TextStyle(fontSize: 12)),
          leading: Radio(
            value: "other",
            groupValue: _gender,
            onChanged: (val) {
              _gender = val;
              // obj.setGender = _gender;
              
              setState(() {
                // print("${obj.getGender}");
                obj.setGender = _gender;
              });
            },
          ),
        ),
      ],
    );
  }
}

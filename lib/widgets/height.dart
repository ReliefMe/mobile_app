import "package:flutter/material.dart";
import '../record_sample.dart';

 class Height extends StatefulWidget {
     Height({Key key}) : super(key: key);
   @override
   _HeightState createState() => _HeightState();
 }
 
 class _HeightState extends State<Height> {
  String _dropdownValue;
  String height = '';

  RecordSample obj = RecordSample();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      hint:Text("Select your height"),
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
     
      items: <String>['Height','Less than 150cm/4ft\'11in', '150cm/4ft\'11in - 165cm/5ft\'5in', '165cm/5ft\'5in - 175cm/5ft\'8in', '175cm/5ft\'8in-185cm/6ft\'0in','Above']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
       onChanged: (String newValue) {
        setState(() {
          _dropdownValue = newValue;
          height = newValue;
          obj.setHeight = height;
          
        });
      },
    );
  }
}
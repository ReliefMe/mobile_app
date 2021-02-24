import "package:flutter/material.dart";
import '../record_sample.dart';

 class Weight extends StatefulWidget {
     Weight({Key key}) : super(key: key);
   @override
   _WeightState createState() => _WeightState();
 }
 
 class _WeightState extends State<Weight> {
  String _dropdownValue ;
  String weight = '';

  RecordSample obj = RecordSample();

  String get weightt{
    return weight;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      hint: Text("Select your weight"),
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          _dropdownValue = newValue;
          weight = newValue;
          obj.setWeight = weight;
          // Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context)=> RecordSample(weight:weight),));
        });
      },
      items: <String>['Under 45kg/100lbs', '45kg/100lbs-65kg/143lbs', '65kg/143lbs-85kg/187lbs', '85kg/187lbs-105kg/231lbs','Above']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
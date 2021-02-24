import "package:flutter/material.dart";
import '../record_sample.dart';

 class Temperature extends StatefulWidget {
     Temperature({Key key}) : super(key: key);
   @override
   _TemperatureState createState() => _TemperatureState();
 }
 
 class _TemperatureState extends State<Temperature> {
  String _dropdownValue ;
  String temperature ='';

  RecordSample obj = RecordSample();

  String get temp{
    return temperature;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      hint: Text("Select your body temperature"),
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
          temperature = newValue;
          obj.setTemperature = temperature;
          // Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context)=> RecordSample(temperature:temperature),));
        });
      },
      items: <String>['35C/95F - 37.9C/100F', 'Above 38C/101F', 'I don\'t know']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
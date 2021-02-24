import "package:flutter/material.dart";
import "../record_sample.dart";

 class Age extends StatefulWidget {
     Age({Key key}) : super(key: key);
   @override
   _AgeState createState() => _AgeState();
 }
 
 class _AgeState extends State<Age> {
  String _dropdownValue ;
  String age = '';

  RecordSample obj = RecordSample();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      icon: Icon(Icons.arrow_downward,),
      hint: Text("Select your age"),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
     
      items: <String>['18-30', '31-40', '41-50', 'Above 50']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
       onChanged: (String newValue) {
        setState(() {
          _dropdownValue = newValue;
          obj.setAge = newValue;
          
          // age = newValue;
          // Navigator.of(context).push(MaterialPageRoute(
          // builder: (context)=> RecordSample(age:age),));
        });
      },
    );
  }
}
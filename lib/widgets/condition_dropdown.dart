import "package:flutter/material.dart";
import '../record_sample.dart';

 class Condition extends StatefulWidget {
     Condition({Key key}) : super(key: key);
   @override
   _ConditionState createState() => _ConditionState();
 }
 
 class _ConditionState extends State<Condition> {

  String _dropdownValue ;
  String _value ="";

  RecordSample obj = RecordSample();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(

      items:[
      DropdownMenuItem<String>(child: Text("Postivie"), value: "Positive"),
      DropdownMenuItem<String>(child: Text("Negative"), value: "Negative"),
      DropdownMenuItem<String>(child: Text("Not Tested"), value: "Not Tested"),
      DropdownMenuItem<String>(child: Text("Waiting for results"), value: "Waiting for results"),
      ],
      hint: Text("select"),
      value: _dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.purple),
      underline: Container(
        height: 2,
        color: Colors.purple,
      ),
      onChanged: (String value) {
        setState(() {
          _value = value;
          _dropdownValue = value;
          obj.setCondition = value;
          
          // Navigator.of(context).push(MaterialPageRoute(
          // builder: (context)=> RecordSample(condition:p_condition),));
        });
      },
      
      
      // items: <String>['Positive', 'Negative', 'Not tested', 'Waiting for results']
      //     .map<DropdownMenuItem<String>>((String value) {
      //   return DropdownMenuItem<String>(

      //     value: value,
      //     child: Text(value),
      //   );
      // }).toList(),

      
      
    );
  }
}
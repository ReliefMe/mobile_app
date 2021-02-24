import 'package:flutter/material.dart';
import '../record_sample.dart';

class Symptoms extends StatefulWidget {
  Symptoms({Key key}) : super(key: key);

  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {

  var checkbox1 = false;
  var checkbox2 = false;
  var checkbox3 = false;
  var checkbox4 = false;
  var checkbox5 = false;
  var checkbox6 = false;
  var checkbox7 = false;
  var checkbox8 = false;

  // var symptoms = new List();s
  List<String> _symptoms= [];
  RecordSample obj = RecordSample();

  String _symptomsString = '';
  
  void checkBoxChange1(bool val){
    
     if (val){
    _symptoms.add('Fever, chills, or sweating');
    
    }
    else{
      _symptoms.remove('Fever, chills, or sweating');
    }
     
    setState(() {
     checkbox1 = val; 
     _symptomsString = _symptoms.toString();
     print(_symptomsString);
     obj.setSymptoms = _symptomsString;
    });
  }
  void checkBoxChange2(bool val){
    if (val){
    _symptoms.add("Shortness of breath");
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove("Shortness of breath");
    }
    setState(() {
     checkbox2 = val; 
     obj.setSymptoms = _symptomsString;
    });
  }
  void checkBoxChange3(bool val){
    if (val){
    _symptoms.add('New or worsening cough');
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove('New or worsening cough');
    }
    setState(() {
     checkbox3 = val; 
     obj.setSymptoms = _symptomsString;
    });
  }
    void checkBoxChange4(bool val){
    if (val){
    _symptoms.add('Sore throat');
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove('Sore throat');
    }
    setState(() {
     checkbox4 = val; 
     obj.setSymptoms = _symptomsString;
    });
  }
    void checkBoxChange5(bool val){
    if (val){
    _symptoms.add('Body aches');
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove('Body aches');
    }
    setState(() {
     checkbox5 = val; 
     obj.setSymptoms = _symptomsString;
    });
  }
    void checkBoxChange6(bool val){
    if (val){
    _symptoms.add('Loss of taste');
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove('Loss of taste');
    }
    setState(() {
     checkbox6 = val; 
     obj.setSymptoms = _symptomsString;
    });
  }
    void checkBoxChange7(bool val){
    if (val){
    _symptoms.add('Loss of smell');
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove('Loss of smell');
    }
    setState(() {
     checkbox7 = val; 
     obj.setSymptoms = _symptomsString;
     print("This one    "+_symptomsString);
     print(_symptomsString.runtimeType);
    });
  }
    void checkBoxChange8(bool val){
    if (val){
    _symptoms.add('None');
    _symptomsString = _symptoms.toString();
    }
    else{
      _symptoms.remove('None');
    }
    setState(() {
     checkbox8 = val; 
     obj.setSymptoms = _symptomsString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: const Text('Fever, chills, or sweating'),
          value: checkbox1,
          onChanged: checkBoxChange1,
        ),
        CheckboxListTile(
          title: const Text('Shortness of breath'),
          value: checkbox2,
          onChanged: checkBoxChange2,
        ),
        CheckboxListTile(
          title: const Text('New or worsening cough'),
          value: checkbox3,
          onChanged: checkBoxChange3,
        ),
        CheckboxListTile(
          title: const Text('Sore throat'),
          value: checkbox4,
          onChanged: checkBoxChange4,
        ),
        CheckboxListTile(
          title: const Text('Body aches'),
          value: checkbox5,
          onChanged: checkBoxChange5,
        ),
        CheckboxListTile(
          title: const Text('Loss of taste'),
          value: checkbox6,
          onChanged: checkBoxChange6,
        ),
        CheckboxListTile(
          title: const Text('Loss of smell'),
          value: checkbox7,
          onChanged: checkBoxChange7,
        ),
        CheckboxListTile(
          title: const Text('None'),
          value: checkbox8,
          onChanged: checkBoxChange8,
        ),
      ],
    );
  }
}
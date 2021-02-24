import 'package:flutter/material.dart';
import '../record_sample.dart';

class MedicalHistory extends StatefulWidget {
  MedicalHistory({Key key}) : super(key: key);

  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();
}

class _MedicalHistoryState extends State<MedicalHistory> {

  var checkbox1 = false;
  var checkbox2 = false;
  var checkbox3 = false;
  var checkbox4 = false;
  var checkbox5 = false;
  var checkbox6 = false;
  var checkbox7 = false;

  List medicalHistory ;

  RecordSample obj = RecordSample();

  String _medicalHistoryString;

  void checkBoxChange1(bool val){
    medicalHistory.add("Asthma or chronic lung disease");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox1 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }
  void checkBoxChange2(bool val){
    medicalHistory.add("Pregnancy");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox2 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }
  void checkBoxChange3(bool val){
    
    medicalHistory.add("Diabetes with complications");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox3 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }
    void checkBoxChange4(bool val){
    medicalHistory.add("Disease or conditions that make it harder to cough");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox4 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }
    void checkBoxChange5(bool val){
    medicalHistory.add("Congestive heart failure");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox5 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }
    void checkBoxChange6(bool val){
    medicalHistory.add("Extreme obesity");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox6 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }
    void checkBoxChange7(bool val){
    medicalHistory.add("None");
    _medicalHistoryString = medicalHistory.toString();
    setState(() {
     checkbox7 = val; 
     obj.setMedicalHistory = _medicalHistoryString;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: const Text('Asthma or chronic lung disease'),
          value: checkbox1,
          onChanged: checkBoxChange1,
        ),
        CheckboxListTile(
          title: const Text('Pregnancy'),
          value: checkbox2,
          onChanged: checkBoxChange2,
        ),
        CheckboxListTile(
          title: const Text('Diabetes with complications'),
          value: checkbox3,
          onChanged: checkBoxChange3,
        ),
        CheckboxListTile(
          title: const Text('Disease or conditions that make it harder to cough'),
          value: checkbox4,
          onChanged: checkBoxChange4,
        ),
        CheckboxListTile(
          title: const Text('Congestive heart failure'),
          value: checkbox5,
          onChanged: checkBoxChange5,
        ),
        CheckboxListTile(
          title: const Text('Extreme obesity'),
          value: checkbox6,
          onChanged: checkBoxChange6,
        ),
        CheckboxListTile(
          title: const Text('None'),
          value: checkbox7,
          onChanged: checkBoxChange7,
        ),
      ],
    );
  }
}
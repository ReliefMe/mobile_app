import "./widgets/condition_dropdown.dart";
import "./widgets/gender.dart";
import "./widgets/lungs_condition.dart";
import "package:flutter/material.dart";
import "./widgets/height.dart";
import "./widgets/weight.dart";
import "./widgets/temperature.dart";
import "./widgets/age.dart";
import "./widgets/country.dart";
import "./widgets/patient.dart";
import "./widgets/symptoms.dart";
import "./widgets/medical_history.dart";
import "./widgets/device_condition.dart";
import "./widgets/smoker_condition.dart";
import 'package:url_launcher/url_launcher.dart';
import './cough_instructions.dart';
import './widgets/my_drawer.dart';
import './models/patient_record.dart';
import './breath.dart';

class RecordSample extends StatelessWidget {
  _launchURL() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLSenyxONdK-mAJ2hCC7dryNTGdwmtwMQyOZFwc5KDXyAzjSLYA/viewform';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  
  String age;
  String condition;
  String country;
  String device;
  String height;
  String lungs;
  String patient;
  String smoker;
  String temperature;
  String weight;
  String gender;
  String symptoms;
  String medicalHistory;


 String get getMedicalHistory => medicalHistory;

 set setMedicalHistory(String medicalHistory) => this.medicalHistory = medicalHistory;

  

  // Symptoms symObj = Symptoms();

//   List symptoms;
//   String symptom;

//  String get getSymptom => symptom;

//  set setSymptom(String symptom) => this.symptoms.add(symptom);


  String get getGender => gender;

 set setGender(String gender) => this.gender = gender;

 String get getAge => age;

 set setAge(String age) => this.age = age;

 String get getCondition => condition;

 set setCondition(String condition) => this.condition = condition;

 String get getCountry => country;

 set setCountry(String country) => this.country = country;

 String get getDevice => device;

 set setDevice(String device) => this.device = device;

 String get getHeight => height;

 set setHeight(String height) => this.height = height;

 String get getLungs => lungs;

 set setLungs(String lungs) => this.lungs = lungs;

 String get getPatient => patient;

 set setPatient(String patient) => this.patient = patient;

 String get getSmoker => smoker;

 set setSmoker(String smoker) => this.smoker = smoker;

 String get getTemperature => temperature;

 set setTemperature(String temperature) => this.temperature = temperature;

 String get getWeight => weight;

 set setWeight(String weight) => this.weight = weight;

 
 String get getSymptoms => symptoms;

 set setSymptoms(String symptoms) {this.symptoms = symptoms;}

  // RecordSample(
  //     {this.gender,
  //     this.age,
  //     this.condition,
  //     this.country,
  //     this.device,
  //     this.height,
  //     this.lungs,
  //     this.smoker,
  //     this.temperature,
  //     this.weight,
  //     this.patient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReliefMe'),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
                "Has the patient given consent for participating in this research? *",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: InkWell(
              onTap: _launchURL,
              child: Text('(Click here to fill the form)',
                  style: TextStyle(fontSize: 15, color: Colors.blue)),
            ),
          ),
          Container(
            child: Patient(),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "Please enter your COVID19 condition here *",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 80.0),
            child: Condition(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Please record your cough*",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text("RECORD"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cough()),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Please record your breathing*",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text("RECORD"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Breath()),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 40.0, right: 20.0),
            child: Text(
              "Optional data fields",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text("Select your gender",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            child: Gender(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text("Any lung conditions?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            child: Lungs(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 60.0),
            child: Country(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 60.0),
            child: Age(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 60.0),
            child: Temperature(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 60.0),
            child: Weight(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 60.0),
            child: Height(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Is the patient a smoker?*",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Smoker(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Patient Reported Symptoms *",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Symptoms(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text("Medical History",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: MedicalHistory(),
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 15.0),
          //   child: Text(
          //       "Was the audio data collected using the patient's smartphone? *",
          //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          // ),
          // Container(
          //   child: Device(),
          // ),
          SizedBox(height: 5,),
          Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: RaisedButton(
                textColor: Colors.blue,
                child: Text("Submit"),
                onPressed: () {
                  
                  print("${obj.getGender}");
                   print("${obj.getCountry}");
                  print("${obj.getSymptoms}");
                  print("${obj.getMedicalHistory}");   
                },
              )),
        ],
      ),
    );
  }
}

import "package:flutter/material.dart";
import './widgets/recorder/recorder_home_view.dart';
import './record_sample.dart';

class Cough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.white,
          child: Column( 
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/virufy_instructions.png'),
                width: 500,
                height: 600,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.red,
                    child: Text("RECORD"),
                    textColor: Colors.white,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                        RecorderHomeView(
                          title: 'Record your cough',
                        )
                      ));
                    },
                  ),
                  SizedBox(width: 20,),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text("Cancel"),
                    textColor: Colors.white,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                        RecordSample()),
                      );
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}

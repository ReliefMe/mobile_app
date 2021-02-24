import 'package:flutter/material.dart';
import './models/meds.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

class Medicines extends StatefulWidget {
  @override
  _MedicinesState createState() => _MedicinesState();
}


List <Meds> temp;
class _MedicinesState extends State<Medicines> {

  List<Meds> _meds = List<Meds>();
  List<Meds> _medsForDisplay = List<Meds>();

  Future<List<Meds>> fetchMeds() async {
    var url = "https://reliefme.org/data.html";
    var response = await http.get(url);

    var meds = List<Meds>();

    if (response.statusCode  == 200){
      var medsJson = json.decode(response.body);
      for (var medJson in medsJson){
        meds.add(Meds.fromJson(medJson));
      }
    }
    return meds;
  }
  

  @override
  void initState(){
    fetchMeds().then((value){
      
      setState((){
        _meds.addAll(value);
        _medsForDisplay = _meds;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("Medicines"),
            ),
            body: 

       ListView.builder(
        itemBuilder: (ctx, index) {
          return index == 0  ? _searchBar() : _listItem(index - 1);
        },
        itemCount: _meds.length,
      ),
        );
  }

  _searchBar(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search..."
      ),
      onChanged: (text){
        text = text.toLowerCase();
        setState((){
          _medsForDisplay = _meds.where((med){
            var medName = med.name.toLowerCase();
            return medName.contains(text);
          }).toList();
        });
      },
    ),);

  }

  _listItem(index){
    
                return Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: SingleChildScrollView(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      ListTile(
                        // leading: Text(tx.name),
                        title: Text(
                            _medsForDisplay[index].name + "\n" + _medsForDisplay[index].type + "\n" + _medsForDisplay[index].power),
                        trailing: Text(_medsForDisplay[index].formula,
                            style: TextStyle(
                                fontSize: 18, color: Colors.black54)),
                      ),
                    ],
                  )),
                );
  }
}
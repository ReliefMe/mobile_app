import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import './recorded_list_view.dart';
import './recorder_view.dart';

class RecorderHomeView extends StatefulWidget {
  final String _title;

  const RecorderHomeView({Key key, @required String title})
      : assert(title != null),
        _title = title,
        super(key: key);

  @override
  _RecorderHomeViewState createState() => _RecorderHomeViewState();
}

class _RecorderHomeViewState extends State<RecorderHomeView> {
  Directory appDirectory;
  Stream<FileSystemEntity> fileStream;
  List<String> records;

  @override
  void initState() {
    super.initState();
    records = [];
    getApplicationDocumentsDirectory().then((value) {
      appDirectory = value;
      appDirectory.list().listen((onData) {
        if(records.length < 2){
        if(onData.path.endsWith(".wav")){
          records.clear();
        records.add(onData.path);
        }
        }
      }).onDone(() {
        // records = records.reversed.toList();
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    fileStream = null;
    appDirectory = null;
    records = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: RecordListView(
              records: records,
            ),
          ),
          Expanded(
            flex: 1,
            child: RecorderView(
              onSaved: _onRecordComplete,
            ),
          ),
        ],
      ),
    );
  }

  _onRecordComplete() {
    records.clear();
    appDirectory.list().listen((onData) {
      if(records.length < 2){
      if(onData.path.endsWith(".wav")){
        records.clear();
        records.add(onData.path);
        }
      }
      print(records[0]);
      print(records[0].runtimeType);
    }).onDone(() {
      records.sort();
      // records = records.reversed.toList();
      setState(() {});
    });
  }
}

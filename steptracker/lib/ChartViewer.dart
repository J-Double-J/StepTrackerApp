import 'package:flutter/material.dart';
import 'StepTracker.dart';

class ChartViewer extends StatefulWidget {
  List<StepTracker> stepTrackerList = [];

  ChartViewer(StepTracker st) {
    stepTrackerList.add(st);
  }
  
  @override
  _ChartViewerState createState() => _ChartViewerState();
}

class _ChartViewerState extends State<ChartViewer> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Your Progress")),
      body: Container(
        child: Column(children: [
          
        ],)
      )
    );
  }
}
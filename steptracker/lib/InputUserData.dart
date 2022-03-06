import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ChartViewer.dart';
import 'StepTracker.dart';

class InputUserData extends StatefulWidget {
  @override
  _InputUserDataState createState() => _InputUserDataState();
}

class _InputUserDataState extends State<InputUserData> {
  String _day = "Sunday";
  var _steps; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Input Data")),),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column( 
          children: [
            Text("Track Your Steps", style: TextStyle(color: Colors.white, fontSize: 20)), 

            DropdownButton<String>(
              value: _day,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  _day = newValue;
                });
              },
              items: <String>['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
          ),

            TextFormField(
            autofocus: true,
            onChanged: (newText) {
              setState() {
                _steps = int.parse(newText);
              }
            },
            decoration: InputDecoration(
              labelText: "Steps",
              border: UnderlineInputBorder()
            ),
            keyboardType: TextInputType.numberWithOptions(
                      signed: false, decimal: false),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 6,
              ),

            Padding(
              padding: EdgeInsets.only(left: 205),
              child: ElevatedButton(
              onPressed: () {
                setState(() {
                  var tracker = StepTracker(_day, _steps);
                  Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => ChartViewer(tracker)));
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Submit"),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
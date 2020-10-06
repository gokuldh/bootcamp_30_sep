import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';


void main() => runApp(MaterialApp(
 home: QuickTimer(),
));

class QuickTimer extends StatefulWidget{
 @override
 _QuickTimer createState() => _QuickTimer();

}

class _QuickTimer extends State<QuickTimer>{

  static const duration = const Duration(seconds: 1);

  int secondspassed = 0;
  bool isActive = false;
  Timer timer;

  void ticker() {
    if(isActive){
      setState(() {
        secondspassed = secondspassed + 1;
      });

    }
  }

  @override
  void initState(){
    timer = Timer.periodic(duration, (Timer t) {
      ticker();
    });
   super.initState();
  }

  @override
  Widget build(BuildContext context) {

    int seconds = secondspassed % 60;
    int minutes = secondspassed ~/ 60;
    int hours = secondspassed ~/ (60*60);

    return Scaffold(
      appBar: AppBar(
        title: Text("Quick TImer"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TimerContainer(
                  label: 'H',
                  value: hours.toString(),
                ),
                TimerContainer(
                    label: 'M',
                    value: minutes.toString(),
                ),
                TimerContainer(
                    label: 'S',
                    value: seconds.toString(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Text(isActive ? 'Stop': 'Start'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimerContainer extends StatelessWidget{
  TimerContainer({this.label, this.value});
  String label;
  String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(30),
      decoration:  new BoxDecoration(
        borderRadius: new BorderRadius.circular(10),
        color: Colors.black54,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
              "$value",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
      Text(
        "$label",
        style: TextStyle(
            color: Colors.white,
            fontSize: 30
            ),
          ),
        ],
      ),
    );
  }

}




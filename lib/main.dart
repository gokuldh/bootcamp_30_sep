import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: FlutterBootcamp()
));

class FlutterBootcamp extends StatefulWidget{

  @override
  _FlutterBootcamp createState() => _FlutterBootcamp();

}

class _FlutterBootcamp extends State<FlutterBootcamp> {

  List<String> notes = [
    "Take out your car",
    "get groceries from market",
    "Finish the project by tonight!!",
    "This is a Bootcamp",
    "This is Day 5"
  ];

  Widget cardTemplate(note) {
    return Card (
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(note),
        ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Notes App"),
       centerTitle: true,
       backgroundColor: Colors.deepOrange,
     ),
     body: Column(
       children: notes.map((note) => cardTemplate(note)).toList(),
     ),
   );
  }

}
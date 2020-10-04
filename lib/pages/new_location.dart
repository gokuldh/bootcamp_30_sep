import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewLocation extends StatefulWidget{
  @override
  _NewLocation createState() => _NewLocation();
}

class _NewLocation extends State<NewLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("New Location Screen"),
      ),
    );
  }
}
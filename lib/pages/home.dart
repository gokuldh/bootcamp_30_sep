import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Text("A"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/newlocation');
              },
              child: Text("B"),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
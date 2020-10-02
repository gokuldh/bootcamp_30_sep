import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(FlutterBootcamp());


class FlutterBootcamp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text(Strings.titletext),
         backgroundColor: Colors.deepOrange,
         centerTitle: true,
       ),
       body: Container(
         color: Colors.grey,
         child: Text("SKILLTO"),
         padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
         margin: EdgeInsets.fromLTRB(100, 100, 0, 0),
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(
           Icons.alternate_email,
           size: 30,
           color: Colors.white,
         ),
         backgroundColor: Colors.deepOrange,
         onPressed: () {
           print("I was Clicked");
         },
       ) ,
     ),
   );
  }
}


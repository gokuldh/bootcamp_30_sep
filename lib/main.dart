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
       body: Column(
         children: [
           Row(
             children: [
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.deepOrange,
                   child: Text("A"),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.blue,
                   child: Text("B"),
                 ),
               ),
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.green,
                   child: Text("C"),
                 ),
               ),
             ],
           ),

         SizedBox(
           height: 20,
         ),

           Row(
             children: [
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.deepOrange,
                   child: Text("A"),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.blue,
                   child: Text("B"),
                 ),
               ),
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.all(20),
                   color: Colors.green,
                   child: Text("C"),
                 ),
               ),
             ],
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
                 CircleAvatar(
                   backgroundImage: AssetImage('assets/phone.jpg'),
                   radius: 50,
                 ),
             ],
           ),
         ],
       ),
     ),
   );
  }
}


import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
//https://reqres.in/api/users?page=2

void main() => runApp(MaterialApp(
 home: ApiTest(),
));

class ApiTest extends StatefulWidget{
 @override
 _ApiTest createState() => _ApiTest();

}

class _ApiTest extends State<ApiTest>{

  Map data;
  List userData;

  Future getData() async{
  http.Response response = await http.get("https://reqres.in/api/users?page=2");
  data = json.decode(response.body);
  setState(() {
    userData = data["data"];
  });

  }

  @override
  void initState(){
   super.initState();
   getData();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Api Test"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: userData == null ? 0: userData.length,
          itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(userData[index]["avatar"]),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                    child: Text("${userData[index]["first_name"]}, ${userData[index]["last_name"]}"),
                  )
                ],
              ),
            ),
          );
          }
      ),
    );
  }

}




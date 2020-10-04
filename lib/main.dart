import 'package:flutter/material.dart';
import 'package:bootcamp_30_sep/pages/choose_location.dart';
import 'package:bootcamp_30_sep/pages/new_location.dart';
import 'package:bootcamp_30_sep/pages/home.dart';

void main() => runApp(MaterialApp(
 initialRoute: '/home',
  routes: {
   '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/newlocation': (context) => NewLocation(),
  },
));


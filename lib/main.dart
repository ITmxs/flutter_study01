// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'jg_flutter_page.dart';
import 'strings.dart' as strings;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: strings.appTitle,
      theme: ThemeData(primaryColor: Colors.green.shade800),
      home: JGFlutter(),
    );
  }
}

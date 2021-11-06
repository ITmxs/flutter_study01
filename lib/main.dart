// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.green.shade800),
      home: MyHomePage(
        title: "坚果",
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title});
  // This widget is the home page of your application.
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello World'), //TextButton Example
            new TextButton(
              child: Text("Click here"),
              onPressed: () {
                // Do something here
              },
            ),

//OutlinedButton Example
            new OutlinedButton(
              child: Text("Click here"),
              onPressed: () {
                // Do something here
              },
            ),
          ],
        ),
      ),
    );
  }
}

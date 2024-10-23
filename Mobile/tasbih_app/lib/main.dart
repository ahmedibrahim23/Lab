import 'package:flutter/material.dart';
import 'package:tasbih_app/tasbih.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Tasbiih App"),
        backgroundColor: const Color.fromARGB(255, 122, 189, 243),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Tasbih(),
          )
        ],
      ),
    ),
  ));
}

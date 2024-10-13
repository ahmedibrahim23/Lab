import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar( 
        leading: const Icon(Icons.arrow_back),
        title: const Text('ahmed hefow'),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
      ), 
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 500,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: -20,
                  left: 10,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/user3.png'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
            child: Text(
              'Ahmed ibrahim',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            margin: EdgeInsets.only(left: 10),
          )
        ],
      ),
    ),
  ));
}

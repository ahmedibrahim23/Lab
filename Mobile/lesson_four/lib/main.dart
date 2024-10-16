import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('mohamed ali'),
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
            child: const Stack(
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
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: RichText(
              text: TextSpan(
                text: 'Mohamed Ali',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              '2.2k friends',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [Icon(Icons.add), Text('Add to story')],
                          ),
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  ));
}

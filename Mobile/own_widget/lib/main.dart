import 'package:flutter/material.dart';

import 'user_card.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 45, 75),
        title: const Text('Users', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Mohamed Abdi Ali",
              role: 'Ceo openAi',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "nasiib Ali farah",
              role: 'Ceo openAi',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "jama yasin omar",
              role: 'Ceo openAi',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Abdirahman mohamed Ali",
              role: 'director',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Mohamed jama ali",
              role: 'Ceo opc',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Mohamed jama ali",
              role: 'Ceo opc',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Mohamed jama ali",
              role: 'Ceo opc',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Mohamed jama ali",
              role: 'Ceo opc',
            ),
            UserCard(
              imgUrl: 'images/profile2.jpeg',
              name: "Mohamed jama ali",
              role: 'Ceo opc',
            ),
          ],
        ),
      ),
    ),
  ));
}

import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFCDC73),
        leading: Icon(Icons.menu),
        title: Text(
          'Kulan',
          style: TextStyle(fontFamily: 'Paytone One', fontSize: 27),
        ),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ClipOval(
              child: Center(
                  child: Image.asset(
            "./images/user.jpg",
            width: 200,
          )))
        ],
      ),
    );
  }
}

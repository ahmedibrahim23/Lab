import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key, required this.imgUrl, required this.name, this.role});
  final String imgUrl;
  final String name;
  final String? role;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue.shade200, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              imgUrl,
              width: 100,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(role ?? 'no job'),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'view profile',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

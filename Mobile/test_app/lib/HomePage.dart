import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.lightBlueAccent,
        actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Image.network(
                        "https://gratisography.com/wp-content/uploads/2024/03/gratisography-vr-glasses-1170x780.jpg"),
                    const Text("100")
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 68, 255, 99),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 124, 68, 255),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 255, 174, 68),
              ),
            ],
          ),
          const Text("Kuwani Box larabo in labuxiyo"),
          Image.network(
              "https://gratisography.com/wp-content/uploads/2024/03/gratisography-vr-glasses-1170x780.jpg")
        ],
      ),
    );
  }
}

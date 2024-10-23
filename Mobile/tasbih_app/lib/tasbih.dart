import 'package:flutter/material.dart';

class Tasbih extends StatefulWidget {
  const Tasbih({super.key});

  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFF00FF), Color(0xFFAA00FF)],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tasbiih",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.5), width: 5)),
              child: Center(
                child: Text("$count",
                    style: TextStyle(color: Colors.white, fontSize: 40)),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 5)),
                  onPressed: () {
                    setState(() {
                      count = 0;
                    });
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1,
                    ),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 5)),
                  onPressed: () {
                    setState(() {
                      while (count > 0) {
                        count--;
                      }
                    });
                  },
                  child: Text(
                    "undo",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )),
            ],
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  enabledMouseCursor: MouseCursor.defer,
                ),
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
          )
        ],
      ),
    );
  }
}

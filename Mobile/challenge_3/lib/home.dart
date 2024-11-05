import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Stack(
          children: [
            AppBar(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.blue.shade900),
              titleSpacing:
                  0, // Reduces the spacing around the title (optional)
              title: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 15.0), // Adjust padding as needed
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "images/img3.png",
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ahmed ibrahim hefow",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 11, 37, 75),
                              ),
                            ),
                            Text(
                              "+252612849983",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              toolbarHeight: 150,
              actions: [
                Container(
                  child: Icon(
                    Icons.search_sharp,
                    size: 35,
                  ),
                  margin: EdgeInsets.only(right: 15),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Divider(
                color: Colors.grey.shade200, // Change color as needed
                thickness: 1, // Adjust thickness as needed
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "images/img1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.all(15),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "helow",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Container(
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Image.asset("images/fly.jpg"),
            const SizedBox(
              height: 20,
            ),
            const Text("butterfly is an unsetts of loving green",
                style: TextStyle(fontSize: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text("Muqdisho . Somalia."),
                ),
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                    ),
                    Text(
                      "22",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                )
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 80,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    // Padding(padding: EdgeInsets.all(15)),
                    Icon(
                      Icons.call,
                      color: Colors.red,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "Call",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.directions, color: Colors.red),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "direction",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.shape_line, color: Colors.red),
                    Padding(padding: EdgeInsets.all(5)),
                    Text("share",
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ],
                )
              ], //
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
        ));
  }
}

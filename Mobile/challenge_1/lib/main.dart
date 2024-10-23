import 'package:challenge_1/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          leading: const Icon(Icons.arrow_back),
          foregroundColor: Colors.black,
          title: const Text(
            "My Cart",
          ),
          centerTitle: true,
          actions: const [
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text(
              'Clear',
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Cart(title: "Torto special 1", amount: "\$ 8", count: "10"),
            Cart(title: "Torto special 2", amount: "\$ 11", count: "5"),
            SizedBox(
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$ 25',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(width: 20), // Add spacing before the button
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 240, 143, 136),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Order now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    width: 8), // Add some margin at the end of the button
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart(
      {super.key,
      required this.title,
      required this.amount,
      required this.count});
  final String title;
  final String amount;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10), // Add margin around the container
      padding: const EdgeInsets.all(10), // Add padding for spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Image.asset(
                  "images/placeholder.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10), // Space between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 23),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(amount),
                        const Icon(Icons.delete_outline),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 240, 143, 136),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(count),
                        const SizedBox(width: 5),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 240, 143, 136),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          // Space before the button
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const img_link =
    "https://images.unsplash.com/photo-1720415353460-957325a7267d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmVudGFsJTIwaG91c2VzfGVufDB8fDB8fHww";

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.blue.shade300),
            flexibleSpace: Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: Image.network(
                    img_link,
                    fit: BoxFit.cover,
                  ),
                ),
                // Bottom-right text overlay

                Container(
                  child: Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: Container(
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        " 1/5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {},
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.location_on_outlined,
                      color: Colors.black),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              "Luxury Loft: City Skyline",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              "private individual in 202 SkylineAvenue, Skyline City,Metro",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              "3 guests,2 bedrooms,2 bathroom",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300, width: 1)),
            margin: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "3.5",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: VerticalDivider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "Guest",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: const Text(
                          "Favorites",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: VerticalDivider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "58",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: const Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: RichText(
                                  text: const TextSpan(
                                    text: "Hosted by ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                    children: [
                                      TextSpan(
                                        text: "Ahmed Ibrahim Hefow",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '3 months',
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            // Set this to the height you want the divider to be
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust spacing on both sides
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(14),
            child: const Text(
              "This home offers a cozy yet spacious living space with lots of natural light, featuring a large open-concept kitchen equipped with stainless steel appliances, a dining area, and a comfortable living room with a fireplace.",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 17,
            // Set this to the height you want the divider to be
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust spacing on both sides
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "\$ 2,190 ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: " night",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal))
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      backgroundColor: const Color(0xFFEA1E63),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Reverse',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 2,
            // Set this to the height you want the divider to be
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust spacing on both sides
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

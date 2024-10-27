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
          preferredSize: Size.fromHeight(300),
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

                Positioned(
                  bottom: 16.0,
                  right: 16.0,
                  child: Text(
                    "1/5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            leading: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {},
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.location_on_outlined, color: Colors.black),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            ],
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Text(
              "Luxury Loft: City Skyline",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Text(
              "private individual in 202 SkylineAvenue, Skyline City,Metro",
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Text(
              "3 guests,2 bedrooms,2 bathroom",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300, width: 1)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
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
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
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
                      Text(
                        "Guest",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Text(
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
                      Text(
                        "58",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Text(
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
            margin: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(50)),
                margin: EdgeInsets.only(left: 10),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Hosted by ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          TextSpan(
                              text: "Ahmed ibrahim hefow",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Text("3 months Hosted"),
                    Divider()
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
            // Set this to the height you want the divider to be
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust spacing on both sides
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Text(
              "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan different styles. The text to display is described using a tree of TextSpan different styles. The text ",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 10,
            // Set this to the height you want the divider to be
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust spacing on both sides
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2,90 night"),
              ElevatedButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text("Reverse"))
            ],
          )
        ],
      ),
    );
  }
}

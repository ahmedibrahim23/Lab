// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// const img_link =
//     "https://images.unsplash.com/photo-1720415353460-957325a7267d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmVudGFsJTIwaG91c2VzfGVufDB8fDB8fHww";
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     color: Colors.blue,
//     home: Scaffold(
//       appBar: AppBar(
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: Colors.blue.shade300,
//         ),
//         surfaceTintColor: Colors.blue.shade300,
//         flexibleSpace: Image.network(
//           img_link,
//           fit: BoxFit.cover,
//         ),
//         leading: TextButton(
//             style: TextButton.styleFrom(
//                 backgroundColor: Colors.white, padding: EdgeInsets.all(1)),
//             onPressed: () {},
//             child: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             )),
//         actions: [Icon(Icons.location_on_outlined), Icon(Icons.heart_broken)],
//         title: Text("1/5"),
//         toolbarHeight: 500,
//       ),
//     ),
//   ));
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// const imgLink =
//     "https://images.unsplash.com/photo-1720415353460-957325a7267d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmVudGFsJTIwaG91c2VzfGVufDB8fDB8fHww";

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     color: Colors.blue,
//     home: Scaffold(
//       appBar: AppBar(
//         systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: Colors.blue.shade300,
//         ),
//         surfaceTintColor: Colors.blue.shade300,
//         flexibleSpace: Stack(
//           children: [
//             SizedBox(
//               height: 400,
//               child: Image.network(
//                 imgLink,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             // Bottom-right text overlay
//             Positioned(
//               bottom: 16.0,
//               right: 16.0,
//               child: Text(
//                 "1/5",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   backgroundColor: Colors.black54,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         leading: Container(
//           margin: EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             shape: BoxShape.circle,
//           ),
//           child: IconButton(
//             icon: Icon(Icons.arrow_back, color: Colors.black),
//             onPressed: () {},
//           ),
//         ),
//         actions: [
//           Container(
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: IconButton(
//               icon: Icon(Icons.location_on_outlined, color: Colors.black),
//               onPressed: () {},
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               shape: BoxShape.circle,
//             ),
//             child: IconButton(
//               icon: Icon(Icons.favorite_border, color: Colors.black),
//               onPressed: () {},
//             ),
//           ),
//         ],
//         // toolbarHeight: 300, // Adjust toolbar height for image view height
//       ),
//       body: Center(child: Text("Your main content here")),
//     ),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const imgLink =
    "https://images.unsplash.com/photo-1720415353460-957325a7267d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmVudGFsJTIwaG91c2VzfGVufDB8fDB8fHww";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.blue,
    home: Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.blue.shade300,
        ),
        surfaceTintColor: Colors.blue.shade300,
        // Wrap image in a SizedBox to control its height
        flexibleSpace: Image.network(
          imgLink,
          fit: BoxFit.cover,
          height: 400,
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
        toolbarHeight: 300,
      ),
      body: Center(child: Text("Your main content here")),
    ),
  ));
}

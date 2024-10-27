import 'package:challenge_2/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.blue,
    home: Detail(),
  ));
}



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

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// const imgLink =
//     "https://images.unsplash.com/photo-1720415353460-957325a7267d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmVudGFsJTIwaG91c2VzfGVufDB8fDB8fHww";

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     color: Colors.blue,
//     home: Scaffold(
//       appBar: PreferredSize(
//   preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.3), // Set to 30% of view height
//   child: AppBar(
//     flexibleSpace: Stack(
//       children: [
//         // Background image taking the full view height
//         Positioned.fill(
//           child: Image.asset(
//             'assets/background.jpg',
//             fit: BoxFit.cover,
//           ),
//         ),
//         // Text box positioned at the bottom right
//         Positioned(
//           bottom: 10,
//           right: 10,
//           child: Container(
//             padding: EdgeInsets.all(8),
//             color: Colors.white,
//             child: Text('Your Text Here'),
//           ),
//         ),
//       ],
//     ),
//     // Leading icon with white box
//     leading: Container(
//       padding: EdgeInsets.all(8),
//       color: Colors.white,
//       child: Icon(Icons.menu),
//     ),
//     // Action icons with white boxes
//     actions: [
//       Container(
//         padding: EdgeInsets.all(8),
//         color: Colors.white,
//         child: Icon(Icons.search),
//       ),
//       Container(
//         padding: EdgeInsets.all(8),
//         color: Colors.white,
//         child: Icon(Icons.notifications),
//       ),
//     ],
//   ),
// )
// ,
//       body: Center(child: Text("Your main content here")),
//     ),
//   ));
// }

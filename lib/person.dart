// import 'package:flutter/material.dart';
// import 'package:notepad/boxb.dart';
// import 'package:notepad/input.dart';
// import 'package:notepad/routes.dart';

// class Person extends StatefulWidget {
//   const Person({super.key});

//   @override
//   State<Person> createState() => _PersonState();
// }

// class _PersonState extends State<Person> {
//   bool light = false;
//   String name = 'Enter Name';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: NeuBox(
//                   child: Container(
//                     child: Icon(
//                       Icons.person,
//                       size: 250,
//                     ),
//                   ),
//                   height: 270,
//                   width: 250,
//                   enterwidth: 15),
//             ),
//             Container(
//               child:NeuBox(
//                       child: Text(
//                         "$name",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600, fontSize: 20),
//                       ),
//                       height: 100,
//                       width: 250,
//                       enterwidth: 10)
//                   : Container(
//                       child: NeuBox(
//                           child: Container(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Container(
//                                   width: 250,
//                                   child: TextFormField(
//                                     decoration: InputDecoration(
//                                         hintText: 'Enter Name',
//                                         labelText: 'Enter Name'),
//                                   ),
//                                 ),
//                                 Column(
//                                   children: [
//                                     Expanded(
//                                       child: Container(
//                                         child: ElevatedButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               light = true;
//                                             });
//                                           },
//                                           child: Icon(Icons.done),
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                           height: 100,
//                           width: 350,
//                           enterwidth: 15),
//                     ),
//             ),
//             NeuBox(
//                 child: Container(
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.pushNamed(context, MyRoutes.home);
//                     },
//                     child: Text(
//                       "<",
//                       style: TextStyle(fontSize: 50),
//                     ),
//                   ),
//                 ),
//                 height: 80,
//                 width: 80,
//                 enterwidth: 40),
//           ],
//         ),
//       ),
//     );
//   }
// }

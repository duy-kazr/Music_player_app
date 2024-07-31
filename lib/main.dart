import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicplayer/UI/homepage/homePage.dart';


void main() {
  runApp(MusicApp());
}

// class MyApp extends StatelessWidget {
//   dynamic name ;
//   MyApp({super.key, required this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//           body: Stack(
//             children: [
//               Container(
//                 height: 1000,
//                 width: 1000,
//                 child: Image.asset('images/barbatos.jpg', fit: BoxFit.fill,),
//               ),
//               Positioned(
//                 bottom: 20,
//                 left: 10,
//                 right: 10,
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 10),
//                         child: Text(name,
//                             style: const TextStyle(
//                                 fontSize: 32,
//                                 color: Colors.green,
//                                 fontWeight: FontWeight.bold
//                             )
//                         ),
//                       ),
//                       const SizedBox(height: 2,),
//                       const Padding(
//                         padding: EdgeInsets.all(10),
//                         child: Text('The Gundam Barbatos is one of 72 Gundam'
//                             ' frames that was produced and used in the Calamity War,'
//                             ' roughly 300 years ago. After it was recovered, '
//                             'Chryse Guard Security used it as a power reactor. '
//                             'Aside from the fact that its Ahab Reactors were still functional,'
//                             'this was done mainly because Barbatos cockpit was missing when it was found.'
//                             'A new cockpit similar to the one used by the CGS mobile workers was installed'
//                             ' prior to its redeployment by the 3rd Group. Poor maintenance over the centuries'
//                             ' since the Calamity War has degraded the Barbatos armor and full combat potential.'
//                             'This is later rectified by Teiwaz technicians, who not only restored the Barbatos'
//                             ' to its original look but also returned it back to a performance close to its original',
//                             style: TextStyle(fontSize: 14)
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 5,
//                 right: 5,
//                 child: ElevatedButton(
//                   onPressed: (){
//                     runApp(LoadingScreen(data: name));
//                   },
//                   child: const Icon(Icons.newspaper),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

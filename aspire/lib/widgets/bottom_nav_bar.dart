import 'package:aspire/widgets/bottom_nav_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/static/custom_icons.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(26, 8, 26, 24),
      child: Row(
        children: [
          BottomNavButton(navIcon: CustomIcons.home, label: "Home", assignedIndex: 0, ref: ref,),
          BottomNavButton(navIcon: CustomIcons.brain, label: "Quiz", assignedIndex: 1, ref: ref,),
          BottomNavButton(navIcon: CustomIcons.compass, label: "Career Guidance", assignedIndex: 2, ref: ref,),
          BottomNavButton(navIcon: CustomIcons.briefcase, label: "Job Market", assignedIndex: 3, ref: ref,),
          BottomNavButton(navIcon: CustomIcons.person, label: "Profile", assignedIndex: 4, ref: ref,),
        ],
      ),
    );
  }
}













// import 'package:flutter/material.dart';

// import '../models/static/custom_icons.dart';

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});


//   @override
//   Widget build(BuildContext context) {
//     int selectedScreen;

//     return Padding(
//       padding: EdgeInsets.fromLTRB(36, 8, 36, 36),
//       child: Row(
//         children: [
//           IconButton(
//             onPressed: () {}, 
//             icon: Icon(
//               size: 32,
//               Icons.home
//             )
//           ),
      
//           Spacer(),
      
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(0), // Rounded corners
//               ),
//             ),
//             onPressed: () {}, 
//             child: SizedBox(
//               child: SizedBox(
//                 height: 80,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       color: Colors.blue,
//                       height: 10,
//                       // child: SizedBox(width: double.infinity,),
//                     ),

//                     Icon(
//                       size: 32,
//                       CustomIcons.brain
//                     ),

//                     SizedBox(height: 12),
                      
//                     Text("data")
//                   ],
//                 ),
//               ),
//             )
//           ),
      
          
//           Spacer(),

//           TextButton(
//             style: TextButton.styleFrom(
//               padding: EdgeInsets.all(0),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(0),
                
//               ),
//             ),
//             onPressed: () {}, 
//             child: SizedBox(
//               height: 80,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Icon(
//                     size: 32,
//                     CustomIcons.compass
//                   ),

//                   SizedBox(height: 12),
                      
//                     Text("data")
//                 ],
//               ),
//             ),
//           ),
          
//           // IconButton(
//           //   onPressed: () {}, 
//           //   icon: 
//           // ),
          
//           Spacer(),
          
//           IconButton(
//             onPressed: () {}, 
//             icon: Icon(
//               size: 32,
//               CustomIcons.briefcase
//             )
//           ),
          
//           Spacer(),
          
//           IconButton(
//             onPressed: () {}, 
//             icon: Icon(
//               size: 32,
//               Icons.person
//             )
//           ),
//         ],
//       ),
//     );
//   }
// }
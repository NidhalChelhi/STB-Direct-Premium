import 'package:flutter/material.dart';
import 'package:stb_direct/models/navLink_model.dart';
import 'package:stb_direct/styles/color.dart';
import 'package:stb_direct/styles/typo.dart';

Wrap navigationsTabs(List<NavlinkModel> data, double width) {
  return Wrap(
    // direction: Axis.horizontal,
    spacing: 8,
    runSpacing: 8,
    children: List.generate(data.length, (index) {
      NavlinkModel navLink = data[index];
      return navTab(navLink, width);
    }),
  );
}

Padding navTab(NavlinkModel navLink, double width) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Container(
      height: width * 0.25,
      width: width * 0.27,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            purple,
            blueTwo,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          navLink.icon,
          const SizedBox(
            height: 14,
          ),
          Text(
            navLink.title,
            style: header,
          ),
        ],
      ),
    ),
  );
}

// Row navigationTabs() {
//   return Row(
//     children: [
//       const SizedBox(
//         width: 14,
//       ),
//       Flexible(
//         flex: 1,
//         fit: FlexFit.tight,
//         child: Container(
//           width: double.infinity,
//           height: 100,
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.all(
//               Radius.circular(24),
//             ),
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 purple,
//                 blue,
//               ],
//             ),
//           ),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 25,
//               ),
//               Icon(
//                 FeatherIcons.user,
//                 color: white,
//               ),
//               const SizedBox(
//                 height: 14,
//               ),
//               Text(
//                 'Compte',
//                 style: header,
//               ),
//             ],
//           ),
//         ),
//       ),
//       const SizedBox(
//         width: 14,
//       ),
//       Flexible(
//         flex: 1,
//         fit: FlexFit.tight,
//         child: Container(
//           width: double.infinity,
//           height: 100,
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.all(
//               Radius.circular(24),
//             ),
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 purple,
//                 blue,
//               ],
//             ),
//           ),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 25,
//               ),
//               Icon(
//                 FeatherIcons.dollarSign,
//                 color: white,
//               ),
//               const SizedBox(
//                 height: 14,
//               ),
//               Text(
//                 'Credit',
//                 style: header,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }

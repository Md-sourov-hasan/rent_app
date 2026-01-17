// import 'package:flutter/material.dart';
// import 'package:rent_app/const/all_colors.dart';
// class AppBarScreen extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
// final bool showBack;
//   const AppBarScreen({
//     super.key,
//     required this.title,
//     required this.showBack,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       toolbarHeight: 60,
//       automaticallyImplyLeading: false,
//       backgroundColor: AllColors.primaryColor,
//       leadingWidth: 100,
//       elevation: 0,
//       titleSpacing: 0,
//       title: Padding(
//         padding: EdgeInsets.only(left: 16, top: 10),
//         child: Row(
//           children: [
//             Container(
//               height: 45,
//               width: 45,
//               decoration: BoxDecoration(
//                 color: AllColors.secondaryColor,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(30),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Center(
//                   child: Icon(
//                     Icons.arrow_back_ios_new,
//                     size: 24,
//                     color: AllColors.primaryColor,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
  
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(60);
// }

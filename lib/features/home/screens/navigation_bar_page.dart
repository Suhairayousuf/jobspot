// import 'package:flutter/material.dart';
// import 'package:jobspot/theme/pallete.dart';
// import 'package:shaped_bottom_bar/models/shaped_item_object.dart';
// import 'package:shaped_bottom_bar/utils/arrays.dart';
// import 'package:shaped_bottom_bar/shaped_bottom_bar.dart';
//
// import 'home.dart';
//
// class NavigationBarPage extends StatefulWidget {
//   @override
//   _NavigationBarPageState createState() => _NavigationBarPageState();
// }
//
// class _NavigationBarPageState extends State<NavigationBarPage> {
//   List<Widget> screens = [
//     Home(),
//     Home(),
//     Home(),
//     Home(),
//     Home(),
//
//   ];
//
//   int selectedItem = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: ShapedBottomBar(
//         backgroundColor: Colors.black12,
//         iconsColor: Colors.black,
//         listItems: [
//           ShapedItemObject(iconData: Icon(Icons.home_work), title: "Home"),
//           ShapedItemObject(iconData: Icon(Icons.post_add), title: "Post"),
//           ShapedItemObject(iconData: Icon(Icons.add_box_rounded), title: "New"),
//           ShapedItemObject(iconData: Icon(Icons.messenger_outline), title: "Messages"),
//           ShapedItemObject(iconData: Image.asset('assets/images/Save.png'), title: "Save"),
//         ],
//         onItemChanged: (position) {
//           setState(() {
//             print(position);
//             // position=selectedItem;
//             selectedItem = position;
//
//
//           });
//         },
//         shape: ShapeType.SQUARE,
//         shapeColor: Pallete.primaryColor,
//         selectedIconColor: Colors.white,
//         with3dEffect: true,
//         animationType: ANIMATION_TYPE.FADE,
//       ),
//        body: selectedItem==0?
//              Home():selectedItem==1?Container():Container()
//     );
//   }
// }
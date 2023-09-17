// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:tuline_turizm/screens/contacts/contacts_screen.dart';
// import 'package:tuline_turizm/screens/favorite/favorite_screen.dart';
// import 'package:tuline_turizm/screens/guide/guide_screen.dart';
// import 'package:tuline_turizm/screens/services/services_screen.dart';
//
// import 'home_screen.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
//
//
//
// class AppScreen extends StatefulWidget {
//   const AppScreen({Key? key}) : super(key: key);
//
//   @override
//   _NotesScreenState createState() => _NotesScreenState();
// }
// class _NotesScreenState extends State<AppScreen>{
//
//   @override
//   Widget build(BuildContext context) {
//     PersistentTabController _controller;
//
//     _controller = PersistentTabController(initialIndex: 0);
//     List<Widget> _buildScreens() {
//       return [
//         HomeScreen(),
//         ServicesScreen(),
//         ContactsScreen(),
//         FavoriteScreen(),
//         GuideScreen(),
//       ];
//     }
//
//     List<PersistentBottomNavBarItem> _navBarsItems() {
//       return [
//         PersistentBottomNavBarItem(
//           icon: Icon(CupertinoIcons.home,color: Colors.white,),
//           title: ("Home"),
//           // activeColorPrimary: CupertinoColors.activeBlue,
//           // inactiveColorPrimary: CupertinoColors.systemGrey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.search,color: Colors.white,),
//           title: ("Service"),
//           // activeColorPrimary: CupertinoColors.activeBlue,
//           // inactiveColorPrimary: CupertinoColors.systemGrey,
//         ),
//
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.message,color: Colors.white,),
//           title: ("Settings"),
//           // activeColorPrimary: CupertinoColors.activeBlue,
//           // inactiveColorPrimary: CupertinoColors.systemGrey,
//         ),
//
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.favorite,color: Colors.white,),
//           title: ("Settings"),
//           // activeColorPrimary: CupertinoColors.activeBlue,
//           // inactiveColorPrimary: CupertinoColors.systemGrey,
//         ),
//
//         PersistentBottomNavBarItem(
//           inactiveIcon: Icon(Icons.gps_fixed_sharp,color: Color.fromRGBO(24, 50, 75, 1),),
//           icon: Icon(Icons.gps_fixed_sharp,color: Color.fromRGBO(255, 159, 0, 1),),
//           title: ("دليل"),
//           // activeColorPrimary: CupertinoColors.activeBlue,
//           // inactiveColorPrimary: CupertinoColors.systemGrey,
//         ),
//       ];
//     }
//
//     return  PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       confineInSafeArea: true,
//
//
//       // backgroundColor:Color.fromRGBO(53, 69, 216,1),// Default is Colors.white.
//       handleAndroidBackButtonPress: true, // Default is true.
//       resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
//       stateManagement: true, // Default is true.
//       hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
//       decoration: NavBarDecoration(
//
//         borderRadius: BorderRadius.circular(10.0),
//         colorBehindNavBar: Colors.white,
//
//       ),
//
//       popAllScreensOnTapOfSelectedTab: true,
//       popActionScreens: PopActionScreensType.all,
//       itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: ScreenTransitionAnimation(
//         // Screen transition animation on change of selected tab.
//         animateTabTransition: true,
//         curve: Curves.ease,
//         duration: Duration(milliseconds: 200),
//       ),
//       navBarStyle: NavBarStyle.style6,
//
//
//       // Choose the nav bar style with this property.
//     );
//     // return Scaffold(
//     //   backgroundColor: Colors.white,
//     //   bottomNavigationBar: Container(
//     //     // height: 70.h,
//     //     child: BottomNavigationBar(
//     //       type: BottomNavigationBarType.fixed,
//     //       onTap: (int value) {
//     //         setState(() {
//     //           _currentIndex = value;
//     //           print(value);
//     //         });
//     //       },
//     //       currentIndex: _currentIndex,
//     //       // showSelectedLabels: true,
//     //       backgroundColor: Color.fromRGBO(53, 69, 216,1),
//     //       // showUnselectedLabels: true,
//     //       iconSize: 30,
//     //       items:[
//     //         BottomNavigationBarItem(
//     //           label: "".tr,
//     //           icon:Image.asset('assets/images/home.png',height: 30,color: Colors.white,),
//     //           activeIcon: Image.asset('assets/images/home.png',color: Colors.white,height: 30,),
//     //         ),
//     //         BottomNavigationBarItem(
//     //           label: "".tr,
//     //           icon:Image.asset('assets/images/message2.png',height: 40,color: Colors.white,),
//     //           activeIcon: Image.asset('assets/images/message2.png',color: Colors.white,height: 40,),
//     //         ),
//     //         BottomNavigationBarItem(
//     //           label: "".tr,
//     //           icon:Image.asset('assets/images/search.png',height: 30,color:Colors.white),
//     //           activeIcon: Image.asset('assets/images/search.png',color: Colors.white,height: 30,),
//     //         ),
//     //         BottomNavigationBarItem(
//     //           label: "".tr,
//     //           icon:Image.asset('assets/images/settings.png',height: 30,color: Colors.white,),
//     //           activeIcon: Image.asset('assets/images/settings.png',color: Colors.white,height: 30,),
//     //
//     //         ),
//     //       ],
//     //     ),
//     //   ),
//     //
//     //   body:_bnScreen[_currentIndex].widget,
//     // );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/contacts/contacts_screen.dart';
import 'package:tuline_turizm/screens/favorite/favorite_screen.dart';
import 'package:tuline_turizm/screens/guide/guide_screen.dart';
import 'package:tuline_turizm/screens/services/services_screen.dart';

import '../../models/bn_screen.dart';
import 'home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _NotesScreenState createState() => _NotesScreenState();
}
class _NotesScreenState extends State<AppScreen>{
  late int _currentIndex = 0;
  final List<BnScreen> _bnScreen = <BnScreen>[
    BnScreen(widget: HomeScreen(), title: 'Home'),
    BnScreen(widget: ServicesScreen(), title: 'Message'),
    BnScreen(widget: ContactsScreen(), title: 'Search'),
    BnScreen(widget: FavoriteScreen(), title: 'Setting'),
    BnScreen(widget: GuideScreen(), title: 'Setting'),

  ];
  @override
  Widget build(BuildContext context) {
    // PersistentTabController _controller;

    // _controller = PersistentTabController(initialIndex: 0);
    // List<Widget> _buildScreens() {
    //   return [
    //     HomeScreen(),
    //     ServicesScreen(),
    //     ContactsScreen(),
    //     FavoriteScreen(),
    //     GuideScreen(),
    //   ];
    // }



    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          // height: 90.h,
          child:BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: (int value) {
              setState(() {
                _currentIndex = value;
                print(value);
              });
            },
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            iconSize: 30,
            selectedLabelStyle: TextStyle(color: Color.fromRGBO(255, 159, 0, 1)), // Red color for selected label
            unselectedLabelStyle: TextStyle(color: Color.fromRGBO(24, 50, 75, 1)), // Default color for unselected labels

            items: [
              BottomNavigationBarItem(
                label: "الرئيسية",
                icon: Icon(Icons.home, color: Color.fromRGBO(24, 50, 75, 1)),
                activeIcon: Icon(Icons.home, color: Color.fromRGBO(255, 159, 0, 1)),
              ),
              BottomNavigationBarItem(
                label: "الخدمات",
                icon: Icon(Icons.search, color: Color.fromRGBO(24, 50, 75, 1)),
                activeIcon: Icon(Icons.search, color: Color.fromRGBO(255, 159, 0, 1)),
              ),
              BottomNavigationBarItem(
                label: "تواصل معنا",
                icon: Icon(Icons.message, color: Color.fromRGBO(24, 50, 75, 1)),
                activeIcon: Icon(Icons.message, color: Color.fromRGBO(255, 159, 0, 1)),
              ),
              BottomNavigationBarItem(
                label: "المفضلة",
                icon: Icon(Icons.favorite, color: Color.fromRGBO(24, 50, 75, 1)),
                activeIcon: Icon(Icons.favorite, color: Color.fromRGBO(255, 159, 0, 1)),
              ),
              BottomNavigationBarItem(
                label: "دليل",
                icon: Icon(Icons.gps_fixed_sharp, color: Color.fromRGBO(24, 50, 75, 1)),
                activeIcon: Icon(Icons.gps_fixed_sharp, color: Color.fromRGBO(255, 159, 0, 1)),
              ),
            ],
          )

        ),

        body:_bnScreen[_currentIndex].widget,
      ),
    );
  }
}
//
// import 'package:flutter/material.dart';
// import 'package:tuline_turizm/screens/contacts/contacts_screen.dart';
// import 'package:tuline_turizm/screens/favorite/favorite_screen.dart';
// import 'package:tuline_turizm/screens/guide/guide_screen.dart';
// import 'package:tuline_turizm/screens/home/home_screen.dart';
// import 'package:tuline_turizm/screens/services/services_screen.dart';
//
// import '../widgets/drawer.dart';
// class Home extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<Home> {
//   int _currentIndex = 0;
//
//   void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   List<Widget> _screens = [
//     // Define your screens here
//     HomeScreen(),
//     ServicesScreen(),
//     ContactsScreen(),
//     FavoriteScreen(),
//     GuideScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         drawer: CustomDrawer(),
//         endDrawer: CustomDrawer(), // Add your custom drawer here
//         extendBody: true, // Allows the drawer to be opened even without an AppBar
//         // appBar: AppBar(
//         //   backgroundColor:  Color.fromRGBO(24, 50, 75, 1),
//         //   elevation: 0,
//         // ),
//         body: _screens[_currentIndex],
//         bottomNavigationBar: Container(
//           // height: 90.h,
//             child:BottomNavigationBar(
//               type: BottomNavigationBarType.fixed,
//               onTap: (int value) {
//                 setState(() {
//                   _currentIndex = value;
//                   print(value);
//                 });
//               },
//               showSelectedLabels: false,
//               showUnselectedLabels: false,
//               currentIndex: _currentIndex,
//               backgroundColor: Colors.white,
//               iconSize: 30,
//               selectedLabelStyle: TextStyle(color: Colors.red), // Red color for selected label
//               unselectedLabelStyle: TextStyle(color: Colors.red), // Default color for unselected labels
//
//               items: [
//                 BottomNavigationBarItem(
//                   label: "الرئيسية",
//                   icon: Icon(Icons.home, color: Color.fromRGBO(24, 50, 75, 1)),
//                   activeIcon: Icon(Icons.home, color: Color.fromRGBO(255, 159, 0, 1)),
//                 ),
//                 BottomNavigationBarItem(
//                   label: "الخدمات",
//                   icon: Icon(Icons.search, color: Color.fromRGBO(24, 50, 75, 1)),
//                   activeIcon: Icon(Icons.search, color: Color.fromRGBO(255, 159, 0, 1)),
//                 ),
//                 BottomNavigationBarItem(
//                   label: "تواصل معنا",
//                   icon: Icon(Icons.message, color: Color.fromRGBO(24, 50, 75, 1)),
//                   activeIcon: Icon(Icons.message, color: Color.fromRGBO(255, 159, 0, 1)),
//                 ),
//                 BottomNavigationBarItem(
//                   label: "المفضلة",
//                   icon: Icon(Icons.favorite, color: Color.fromRGBO(24, 50, 75, 1)),
//                   activeIcon: Icon(Icons.favorite, color: Color.fromRGBO(255, 159, 0, 1)),
//                 ),
//                 BottomNavigationBarItem(
//                   label: "دليل",
//                   icon: Icon(Icons.gps_fixed_sharp, color: Color.fromRGBO(24, 50, 75, 1)),
//                   activeIcon: Icon(Icons.gps_fixed_sharp, color: Color.fromRGBO(255, 159, 0, 1)),
//                 ),
//               ],
//             )
//
//         ),
//
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:tuline_turizm/screens/contacts/contacts_screen.dart';
import 'package:tuline_turizm/screens/favorite/favorite_screen.dart';
import 'package:tuline_turizm/screens/guide/guide_screen.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';
import 'package:tuline_turizm/screens/services/services_screen.dart';

import '../widgets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomeScreen(),
        ServicesScreen(),
        ContactsScreen(),
        FavoriteScreen(),
        GuideScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          inactiveIcon: Icon(Icons.home, color: Color.fromRGBO(24, 50, 75, 1)),
          icon: Icon(Icons.home, color: Color.fromRGBO(255, 159, 0, 1)),
          title: "الرئيسية",
          textStyle: TextStyle(
            color: Color.fromRGBO(24, 50, 75, 1)
          ),
          activeColorPrimary:Color.fromRGBO(255, 159, 0, 1),

        ),
        PersistentBottomNavBarItem(
          inactiveIcon: Icon(Icons.search, color: Color.fromRGBO(24, 50, 75, 1)),
          icon: Icon(Icons.search, color: Color.fromRGBO(255, 159, 0, 1)),
          title: "الخدمات",
          textStyle: TextStyle(
              color: Color.fromRGBO(24, 50, 75, 1)
          ),
          activeColorPrimary:Color.fromRGBO(255, 159, 0, 1),
        ),
        PersistentBottomNavBarItem(
          inactiveIcon: Icon(Icons.message, color: Color.fromRGBO(24, 50, 75, 1)),
          icon: Icon(Icons.message, color: Color.fromRGBO(255, 159, 0, 1)),
          title: "تواصل معنا",
          textStyle: TextStyle(
              color: Color.fromRGBO(24, 50, 75, 1)
          ),
          activeColorPrimary:Color.fromRGBO(255, 159, 0, 1),
        ),
        PersistentBottomNavBarItem(
          inactiveIcon: Icon(Icons.favorite, color: Color.fromRGBO(24, 50, 75, 1)),
          icon: Icon(Icons.favorite, color: Color.fromRGBO(255, 159, 0, 1)),
          title: "المفضلة",
          textStyle: TextStyle(
              color: Color.fromRGBO(24, 50, 75, 1)
          ),
          activeColorPrimary:Color.fromRGBO(255, 159, 0, 1),
        ),
        PersistentBottomNavBarItem(
          inactiveIcon: Icon(Icons.gps_fixed_sharp, color: Color.fromRGBO(24, 50, 75, 1)),
          icon: Icon(Icons.gps_fixed_sharp, color: Color.fromRGBO(255, 159, 0, 1)),
          title: "دليل",
          textStyle: TextStyle(
              color: Color.fromRGBO(24, 50, 75, 1)
          ),
          activeColorPrimary:Color.fromRGBO(255, 159, 0, 1),
        ),
      ];
    }

    int _currentIndex = 0;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: CustomDrawer(),
        endDrawer: CustomDrawer(),
        extendBody: true,
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(24, 50, 75, 1),
        //   elevation: 0,
        // ),
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,

          popActionScreens: PopActionScreensType.all,

          navBarStyle: NavBarStyle.style6,
        ),
      ),
    );
  }
}

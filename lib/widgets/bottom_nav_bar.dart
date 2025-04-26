import 'package:ecomerce/widgets/user_info.dart';
import 'package:flutter/material.dart';

import '../Home/notification_pg.dart';
import '../Home/product_pg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    ProductPg(),
    NotificationPg(),
    const Center(child: Text("Favourite")),
    const Center(child: Text("Tickets"))
  ];

  int _selectedIndex = 0;
  void _onItemTapped (int index){
    setState(() {

    });
    _selectedIndex = index;
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*0.1,
      child: Scaffold(
        body: appScreens[_selectedIndex],
        bottomNavigationBar:
        BottomNavigationBar(
            currentIndex:  _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.blueGrey,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  activeIcon: Icon(Icons.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  activeIcon: Icon(Icons.notifications),
                  label: "Notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outlined),
                  activeIcon: Icon(Icons.favorite_outlined),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  activeIcon: Icon(Icons.person),
                  label: "profile")
            ]
        ),



      ),
    );
  }
}

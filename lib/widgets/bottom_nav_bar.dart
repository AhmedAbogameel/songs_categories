import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int pageIndex;
  final Function onTap;
  BottomNavBar({@required this.pageIndex,@required this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black87,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(size: 40),
      unselectedIconTheme: IconThemeData(size: 35),
      currentIndex: pageIndex,
      onTap: onTap,
      items: ['Home', 'Search', 'Your Library'].map((e) {
        IconData iconData;
        if(e == 'Home'){
          iconData = Icons.home;
        }else if(e == 'Search'){
          iconData = Icons.search;
        }else{
          iconData = Icons.clear_all;
        }
        return BottomNavigationBarItem(title: Text(e),icon: Icon(iconData));
      }).toList(),
    );
  }
}
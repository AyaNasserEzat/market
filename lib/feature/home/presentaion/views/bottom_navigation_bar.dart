import 'package:flutter/material.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/feature/home/presentaion/views/home_view.dart';

class BottomNavigationBar extends StatefulWidget {
  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int currentIndex = 0;

  final List<Widget> pages = [
  HomeView(),
    HomeView(),
      HomeView(),
        HomeView(),
          HomeView(),
  ];

  final List<_NavItemData> navItems = [
    _NavItemData(icon: Icons.home, label: "Home"),
    _NavItemData(icon: Icons.list, label: "Categories"),
    _NavItemData(icon: Icons.shopping_basket, label: "Cart"),
    _NavItemData(icon: Icons.favorite_border, label: "Favorites"),
    _NavItemData(icon: Icons.more_horiz, label: "More"),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
    
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColor.green,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(navItems.length, (index) {
            return _buildNavItem(navItems[index], index == currentIndex, index);
          }),
        ),
      ),
    );
  }

  Widget _buildNavItem(_NavItemData item, bool isSelected, int index) {
    return GestureDetector(
      onTap: () => onTabTapped(index),
      child: isSelected
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(item.icon, color: Colors.black, size: 20),
                  SizedBox(width: 6),
                  Text(item.label, style: TextStyle(color: Colors.black)),
                ],
              ),
            )
          : 
          //Image.asset(AppAssetes.homeIcon)
          Icon(item.icon, color: Colors.white, size: 24),
    );
  }
}

class _NavItemData {
  final IconData icon;
  final String label;
  _NavItemData({required this.icon, required this.label});
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/feature/cart_feature/presentation/views/cart_view.dart';
import 'package:pure_soft/feature/favorite_feature/presentation/views/favorite_view.dart';
import 'package:pure_soft/feature/home/presentaion/views/home_view.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/order_view.dart';
import 'package:pure_soft/feature/order_feature/presentaion/views/widgets/time_line.dart';
import 'package:pure_soft/feature/profile/presentation/views/profile_view.dart';

class BottomNavigationBar extends StatefulWidget {
  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomeView(),
  TimeLine(),
  CartView(),
    FavoriteView(),
        ProfileView(),
          
  ];

  final List<_NavItemData> navItems = [
    _NavItemData(icon: AppAssetes.homeIcon, selectedIcon: AppAssetes.selectedHome, label: "Home"),
    _NavItemData(icon: AppAssetes.orderIcon, label: "Orders", selectedIcon: AppAssetes.selectedOrder),
    _NavItemData(icon: AppAssetes.bassketIon, label: "Cart", selectedIcon: AppAssetes.selectedBasket),
    _NavItemData(icon: AppAssetes.favorites, label: "Favorites", selectedIcon: AppAssetes.selectedFavorite),
    _NavItemData(icon: AppAssetes.more, label: "More", selectedIcon: AppAssetes.selectedMore),
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
        height: 60.h,
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
                  
                  SvgPicture.asset(
  item.selectedIcon,
  // اختياري لتغيير اللون
),
              
                  SizedBox(width: 6.w),
                  Text(item.label, style: TextStyle(color: Colors.black)),
                ],
              ),
            )
          : 
          //Image.asset(AppAssetes.homeIcon)
       SvgPicture.asset(
 item.icon,
 // اختياري لتغيير اللون
),
    );
  }
}

class _NavItemData {
  final String selectedIcon;
  String icon;
  final String label;
  _NavItemData({required this.selectedIcon, required this.icon, required this.label});
}
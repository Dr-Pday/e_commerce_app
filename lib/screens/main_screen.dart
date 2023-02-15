import 'dart:ui';
import 'package:e_commerce_app/constants/colors.dart';
import 'package:e_commerce_app/screens/basket_screen.dart';
import 'package:e_commerce_app/screens/category_screen.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/product_list_screen.dart';
import 'package:e_commerce_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedBottomNavigation = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedBottomNavigation,
        children: getScreens(),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: BottomNavigationBar(
            currentIndex: selectedBottomNavigation,
            onTap: (int index) {
              setState(() {
                selectedBottomNavigation = index;
              });
            },
            selectedItemColor: CustomColor.appBlue,
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'SB', fontSize: 10, color: Colors.black),
            selectedLabelStyle: const TextStyle(
                fontFamily: 'SB', fontSize: 10, color: CustomColor.appBlue),
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              bottomNavItems('profile', 'حساب کاربری'),
              bottomNavItems('basket', 'سبد خرید'),
              bottomNavItems('category', 'دسته بندی'),
              bottomNavItems('home', 'خانه')
            ],
          ),
        ),
      ),
    );
  }

  bottomNavItems(String photoName, String lable) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset('assets/images/icon_$photoName.png'),
        ),
        activeIcon: Container(
          margin: const EdgeInsets.only(bottom: 5),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: CustomColor.appBlue,
                  blurRadius: 20,
                  spreadRadius: -7,
                  offset: Offset(0, 10))
            ],
          ),
          child: Image.asset('assets/images/icon_${photoName}_active.png'),
        ),
        label: lable);
  }

  List<Widget> getScreens() {
    return <Widget>[
      const ProfileScreen(),
      const BasketScreen(),
      const ProductListScreen(),
      const HomeScreen(),
    ];
  }
}

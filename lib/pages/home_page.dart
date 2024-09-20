import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_project/controller/bottom_nav_controller.dart';
import 'package:spotify_project/pages/menu/profile.dart';

import 'package:spotify_project/pages/menu/home.dart';
import 'package:spotify_project/pages/menu/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.put(BottomNavController());

    final List<Widget> menus = [Home(), Search(), Profile()];

    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.black,
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndexMenu,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), label: "Profile"),
          ],
        ),
      );
    });
  }
}

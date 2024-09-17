import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_project/controller/bottom_nav_controller.dart';
import 'package:spotify_project/pages/menu/profile.dart';
import 'package:spotify_project/pages/menu/history.dart';
import 'package:spotify_project/pages/menu/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Connect UI to controller
    final BottomNavController bottomNavController = Get.put(BottomNavController());

    final List<Widget> menus = [Home(), History(), Profile()];

    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.black,  // Set the background color to black
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black, // Set the background color to black for the BottomNavigationBar
          selectedItemColor: Colors.white, // Change the color of selected item
          unselectedItemColor: Colors.grey, // Change the color of unselected items
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndexMenu,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.history_outlined), label: "History"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      );
    });
  }
}

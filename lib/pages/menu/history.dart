import 'package:flutter/material.dart';
class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              children: [
                Text("Ini submenu history"),
              ],
            )
        ),
      ),
    );
  }
}
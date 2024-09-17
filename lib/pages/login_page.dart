import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("ini login page"),
            ElevatedButton( onPressed: () {
              Get.toNamed('homepage');
            }, child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

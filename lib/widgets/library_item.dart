import 'package:flutter/material.dart';

class LibraryItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const LibraryItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title, style: TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
    );
  }
}

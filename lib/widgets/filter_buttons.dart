import 'package:flutter/material.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('All'),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {},
          child: Text('Music'),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {},
          child: Text('Podcasts'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';


class FilterButtonLibrary extends StatelessWidget {
  const FilterButtonLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Playlists'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Podcasts'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Albums'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Artists'),
        ),
      ],
    );
  }
}
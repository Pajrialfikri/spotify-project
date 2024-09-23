// search.dart
import 'package:flutter/material.dart';
import 'package:spotify_project/widgets/search_bar.dart';
import 'package:spotify_project/widgets/grid_item.dart';
import 'package:spotify_project/widgets/genre_item.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(width: 10),
            Text('Search'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
              // Aksi untuk tombol kamera
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchBar(), // Custom search bar widget
              SizedBox(height: 20),
              Text(
                'Start browsing',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 2,
                ),
                children: [
                  GridItem(title: 'Music', color: Colors.pink, image: 'assets/images/music.jpeg'),
                  GridItem(title: 'Podcasts', color: Colors.green, image: 'assets/images/podcasts.jpeg'),
                  GridItem(title: 'Live Events', color: Colors.purple, image: 'assets/images/live_events.jpg'),
                  GridItem(title: 'Made For You', color: Colors.blue, image: 'assets/images/made_for_you.png'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Explore your genres',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                ),
                children: [
                  GenreItem(genre: '#indonesian pop', image: 'assets/images/tulus.png'),
                  GenreItem(genre: '#downtown vibes', image: 'assets/images/cinnamon_girl.png'),
                  GenreItem(genre: '#melancholy', image: 'assets/images/space_song.png'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Browse all',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 2,
                ),
                children: [
                  GridItem(title: 'Made For You', color: Colors.blue, image: 'assets/images/made_for_you.png'),
                  GridItem(title: 'New Released', color: Colors.pink, image: 'assets/images/new_releases.jpeg'),
                  GridItem(title: 'Live Events', color: Colors.purple, image: 'assets/images/live_events.jpg'),
                  GridItem(title: 'Pop', color: Colors.green, image: 'assets/images/pop.jpeg'),
                  GridItem(title: 'Indie', color: Colors.purple, image: 'assets/images/indie.jpeg'),
                  GridItem(title: 'Musik Indonesia', color: Colors.pink, image: 'assets/images/musik_indonesia.jpeg'),
                  GridItem(title: 'K-Pop', color: Colors.green, image: 'assets/images/k_pop.jpeg'),
                  GridItem(title: 'Podcast Charts', color: Colors.purple, image: 'assets/images/podcast_charts.jpeg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

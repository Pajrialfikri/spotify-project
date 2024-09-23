import 'package:flutter/material.dart';
import 'package:spotify_project/widgets/filter_button_library.dart';
import 'package:spotify_project/widgets/library_item.dart';

class Library extends StatelessWidget {
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
            Text('Your Library', style: TextStyle(fontSize: 20)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          FilterButtonLibrary(),
          SizedBox(height: 20),
          Text(
            'Recents',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          LibraryItem(
            imagePath: 'assets/images/liked_song.png',
            title: 'Liked Songs',
            subtitle: 'Playlist • 285 songs',
          ),
          LibraryItem(
            imagePath: 'assets/images/didi.jpeg',
            title: 'Didi',
            subtitle: 'Playlist • 1236080069',
          ),
          LibraryItem(
            imagePath: 'assets/images/cigarettes_after_sex.jpeg',
            title: 'Cigarettes After Sex',
            subtitle: 'Artist',
          ),
          LibraryItem(
            imagePath: 'assets/images/pasming_based.png',
            title: 'Pasming Based JJ select',
            subtitle: 'Playlist • Dekatama',
          ),
          LibraryItem(
            imagePath: 'assets/images/ndx_aka.jpeg',
            title: 'NDX A.K.A.',
            subtitle: 'Artist',
          ),
          LibraryItem(
            imagePath: 'assets/images/dj_virall.jpeg',
            title: 'DJ VIRALL YANGG ASIKKK ASIKK',
            subtitle: 'Playlist • intannn gess',
          ),
          LibraryItem(
            imagePath: 'assets/images/calon_taruna.png',
            title: '"CALON TARUNA"',
            subtitle: 'Playlist • Mer',
          ),
          LibraryItem(
            imagePath: 'assets/images/maman_fvndy.png',
            title: 'Maman Fvndy',
            subtitle: 'Artist',
          ),
          LibraryItem(
            imagePath: 'assets/images/diary_by_mpk.png',
            title: 'Diary By MPK',
            subtitle: 'Podcast • MPK SMK Raden Umar Said Kudus',
          ),
          LibraryItem(
            imagePath: 'assets/images/mgmt.jpeg',
            title: 'MGMT',
            subtitle: 'Artist',
          ),
          LibraryItem(
            imagePath: 'assets/images/playlist_gondes.jpeg',
            title: 'PLAYLIST GONDES',
            subtitle: 'Playlist • Nopall Awokawowok',
          ),
          LibraryItem(
            imagePath: 'assets/images/galau_versi_jawa.jpeg',
            title: 'galau versi jawa',
            subtitle: 'Playlist • Playlist Recordings',
          ),
        ],
      ),
    );
  }
}

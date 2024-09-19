import 'package:flutter/material.dart';
import 'package:spotify_project/widgets/filter_buttons.dart';
import 'package:spotify_project/widgets/playlist_tile.dart';
import 'package:spotify_project/widgets/jump_back_in_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/liked_song.png'),
            ),
            SizedBox(width: 16),
            FilterButtons(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 2.5,
              children: [
                PlaylistTile(title: 'Liked Songs', imagePath: 'assets/images/liked_song.png'),
                PlaylistTile(title: 'Cigarettes After Sex', imagePath: 'assets/images/cigarettes_after_sex.jpeg'),
                PlaylistTile(title: 'NDX A.K.A.', imagePath: 'assets/images/ndx_aka.jpeg'),
                PlaylistTile(title: 'Didi', imagePath: 'assets/images/didi.jpeg'),
                PlaylistTile(title: 'DJ VIRALL YANGG ASIKKK ASIKK', imagePath: 'assets/images/dj_virall.jpeg'),
                PlaylistTile(title: 'PLAYLIST GONDES', imagePath: 'assets/images/playlist_gondes.jpeg'),
                PlaylistTile(title: 'MGMT', imagePath: 'assets/images/mgmt.jpeg'),
                PlaylistTile(title: 'galau versi jawa', imagePath: 'assets/images/galau_versi_jawa.jpeg'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Jump Back In',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JumpBackInTile(
                      title: 'CALON TARUNA',
                      imagePath: 'assets/images/mgmt.jpeg',
                    ),
                    SizedBox(width: 16),
                    JumpBackInTile(
                      title: 'Lagu enak buat tidur',
                      imagePath: 'assets/images/mgmt.jpeg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

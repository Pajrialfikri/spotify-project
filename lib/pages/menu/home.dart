import 'package:flutter/material.dart';
import 'package:spotify_project/widgets/filter_buttons.dart';
import 'package:spotify_project/widgets/playlist_tile.dart';
import 'package:spotify_project/widgets/jump_back_in_tile.dart';
import 'package:spotify_project/widgets/library_item.dart';


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
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(width: 16),
            FilterButtons(),
          ],
        ),
      ),
      body: SingleChildScrollView(  // Tambahkan SingleChildScrollView di sini
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disable scroll di GridView
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
                'Made In Pajri',
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
                        title: 'Your weekly mixtape',
                        imagePath: 'assets/images/made1.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Daily Mix1',
                        imagePath: 'assets/images/made2.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Daily Mix2',
                        imagePath: 'assets/images/made3.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Daily Mix3',
                        imagePath: 'assets/images/made4.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Daily Mix4',
                        imagePath: 'assets/images/made5.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Daily Mix5',
                        imagePath: 'assets/images/made6.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Daily Mix6',
                        imagePath: 'assets/images/made7.png',
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Your recent rotation',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              LibraryItem(
                imagePath: 'assets/images/sayang_nyuwun.png',
                title: 'SAYANG NYUWUN SING GEDE',
                subtitle: 'Iclik Pangki',
              ),
              SizedBox(height: 10),
              LibraryItem(
                imagePath: 'assets/images/cry.png',
                title: 'Cry',
                subtitle: 'Cigarettes After Sex',
              ),
              SizedBox(height: 10),
              LibraryItem(
                imagePath: 'assets/images/satu_bulan.png',
                title: 'Satu Bulan',
                subtitle: 'Bernadya',
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
                        title: '"CALON TARUNA"',
                        imagePath: 'assets/images/calon_taruna.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'galau versi jawa',
                        imagePath: 'assets/images/galau_versi_jawa.jpeg',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'PLAYLIST GONDES',
                        imagePath: 'assets/images/playlist_gondes.jpeg',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Didi',
                        imagePath: 'assets/images/didi.jpeg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Your favorite artists',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'MGMT',
                        imagePath: 'assets/images/mgmt.jpeg',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'NDX A.K.A.',
                        imagePath: 'assets/images/ndx_aka.jpeg',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Maman Fvndy',
                        imagePath: 'assets/images/maman_fvndy.png',
                      ),
                      SizedBox(width: 16),
                      JumpBackInTile(
                        title: 'Cigarettes After Sex',
                        imagePath: 'assets/images/cigarettes_after_sex.jpeg',
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}



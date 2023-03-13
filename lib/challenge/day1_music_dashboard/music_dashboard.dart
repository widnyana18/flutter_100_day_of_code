import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/widgets.dart';

class MusicDashboard extends StatelessWidget {
  static String title = 'Music Player';
  static ThemeMode theme = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.tune_rounded,
          color: Colors.black,
          size: 18,
        ),
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/d/db/Logo_of_JOOX.png',
          width: 70,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
              child: SizedBox(
                height: 46,
                child: ListTile(
                  dense: true,
                  minLeadingWidth: 15,
                  onTap: () {},
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  focusColor: Colors.transparent,
                  iconColor: Colors.black38,
                  textColor: Colors.black38,
                  tileColor: Color(0xFFF1F1F1),
                  shape: StadiumBorder(),
                  leading: Icon(Icons.search),
                  trailing: Icon(Icons.mic_none),
                  title: Text(
                    'Find song, playlist, and artist',
                    style: GoogleFonts.roboto(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        elevation: 0,
        onTap: (idx) {},
        unselectedItemColor: Colors.black45,
        selectedItemColor: Color(0xFF5D22A1),
        unselectedLabelStyle: GoogleFonts.roboto(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.headset_outlined),
            label: 'My Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: 'Online',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Explore',
          ),
        ],
      ),
      bottomSheet: MusicPlayerBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36),
            MusicCategory(),
            SizedBox(height: 15),
            MusicListView(headline: 'Recently Played', ratio: 2.3),
            MusicListView(headline: 'Recommended Artists', isManyData: false),
            MusicListView(headline: 'JOOX Top Charts', ratio: 3),
            MusicListView(headline: 'Customized Albums', isManyData: false),
            MusicListView(headline: 'Artists Channels', isManyData: false),
            MusicListView(headline: 'Best Dangdut Music'),
            MusicListView(headline: 'More Like Valorant', isManyData: false),
            MusicListView(headline: 'Theme Playlists'),
            MusicListView(headline: '100% Free Music'),
            MusicListView(headline: 'New Releases'),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

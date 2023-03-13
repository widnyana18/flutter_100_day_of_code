import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: list
            .map(
              (item) => Column(
                children: [
                  Image.asset(
                    'assets/${item.toLowerCase()}.jpg',
                    width: 30,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    item,
                    style: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  List<String> list = [
    'Playlists',
    'Artists',
    'Charts',
    'Fan Center',
  ];
}

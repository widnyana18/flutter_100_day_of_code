import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/flutter_weather_bg.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverAppBar(
      backgroundColor: Color(0xFF555D66),
      leading: IconButton(
        icon: Icon(Icons.add_rounded),
        onPressed: () {},
      ),
      title: Column(
        children: [
          Text(
            'Kerobokan Kaja',
            style: GoogleFonts.lato(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.near_me_rounded,
                size: 12,
              ),
              ...List.filled(
                3,
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 3,
                  ),
                ),
                growable: true,
              ),
            ],
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      expandedHeight: size.width,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
        background: Stack(
          alignment: Alignment.topCenter,
          children: [
            WeatherBg(
              weatherType: WeatherType.thunder,
              width: size.width,
              height: size.height * .6,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Color(0xFF555D66),
                    Color(0xFF555D66),
                  ],
                  stops: [0, .9, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text(
                        '29',
                        style: GoogleFonts.lato(
                          fontSize: 130,
                        ),
                      ),
                    ),
                    Text(
                      '°C',
                      style: GoogleFonts.lato(
                        height: 2.2,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Cloudy',
                  style: GoogleFonts.lato(
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 16),
                IntrinsicWidth(
                  child: InkWell(
                    customBorder: StadiumBorder(),
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white24,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.eco,
                            size: 15,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'IKU 18',
                            style: GoogleFonts.lato(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_100_day_of_code/challenge/day1_music_dashboard/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicListView extends StatelessWidget {
  final double ratio;
  final String? headline;
  final bool isManyData;

  MusicListView({this.ratio = 1.8, this.headline, this.isManyData = true});

  @override
  Widget build(BuildContext context) {
    final landsCArd = headline!.toLowerCase().contains('joox');
    final smallCard = headline!.toLowerCase().contains('recently');
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  headline!,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Offstage(
                  offstage: !isManyData,
                  child: InkWell(
                    customBorder: StadiumBorder(),
                    onTap: () {},
                    child: Ink(
                      padding: EdgeInsets.fromLTRB(12, 2, 0, 2),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Color(0xFFF1F1F1),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'show All',
                            style: GoogleFonts.roboto(fontSize: 11),
                          ),
                          SizedBox(width: 2),
                          Icon(Icons.arrow_right),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          AspectRatio(
            aspectRatio: ratio,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8),
              itemBuilder: (_, idx) {
                final songIdx = List.generate(9, (index) => index);
                final playlistIdx = List.generate(9, (_) {
                  int val = 9;
                  if (val > 11) return 9;
                  return val++;
                });
                songIdx.shuffle();

                if (landsCArd) {
                  return MusicLandscapeCard(musicList[playlistIdx[idx]]);
                }

                return MusicSquareCard(musicList[songIdx[idx]],
                    useLabel: !smallCard);
              },
              itemCount: math.Random().nextInt(9),
              itemExtent: smallCard
                  ? 115
                  : landsCArd
                      ? width * .9
                      : 162,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
